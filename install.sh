#!/usr/bin/env bash
# ============================================================================
# DemandIntel — one-hit installer
#
# Usage:
#   curl -fsSL https://<marketplace>/install.sh | DEMANDINTEL_API_KEY=di_pat_xxx bash
#
# Optional flags (append with `... | bash -s -- <flags>`):
#   --client claude|cursor|codex   Force target client (auto-detect otherwise)
#   --skill  <name>                Install a single skill by name
#   --all                          Install every skill in the manifest (default)
#
# What it does:
#   1. Reads DEMANDINTEL_API_KEY from env (required).
#   2. Downloads marketplace.json from the DemandIntel marketplace bucket.
#   3. Downloads each skill's files (SKILL.md + references/*) preserving folders.
#   4. Places them in the client-appropriate location.
#   5. Configures the DemandIntel MCP server for that client.
#   6. Prints next-step instructions.
#
# Idempotent: re-running overwrites the skill files but never touches an
# unrelated MCP server or existing config keys.
# ============================================================================

set -euo pipefail

MARKETPLACE_URL="${DEMANDINTEL_MARKETPLACE_URL:-https://raw.githubusercontent.com/demandintel/demandintel-skills-resource/main}"
MCP_URL="https://mcp.app.demandintel.io/v1"

# ---- helpers ---------------------------------------------------------------
c_bold=$(printf '\033[1m')
c_dim=$(printf '\033[2m')
c_red=$(printf '\033[31m')
c_grn=$(printf '\033[32m')
c_ylw=$(printf '\033[33m')
c_rst=$(printf '\033[0m')

info()  { printf '%s→%s %s\n' "$c_bold" "$c_rst" "$*"; }
ok()    { printf '%s✓%s %s\n' "$c_grn" "$c_rst" "$*"; }
warn()  { printf '%s⚠%s %s\n' "$c_ylw" "$c_rst" "$*"; }
fail()  { printf '%s✗%s %s\n' "$c_red" "$c_rst" "$*" >&2; exit 1; }

need() { command -v "$1" >/dev/null 2>&1 || fail "Missing required tool: $1"; }

# ---- preflight -------------------------------------------------------------
need curl

if [ -z "${DEMANDINTEL_API_KEY:-}" ]; then
  cat >&2 <<EOF
${c_red}${c_bold}DEMANDINTEL_API_KEY is not set.${c_rst}

Mint a Personal Access Token at:
  https://demandintel.io/app/settings  →  API / MCP tab

Then re-run:
  curl -fsSL ${MARKETPLACE_URL}/install.sh | DEMANDINTEL_API_KEY=di_pat_xxx bash
EOF
  exit 1
fi

case "$DEMANDINTEL_API_KEY" in
  di_pat_*) ;;
  *) fail "DEMANDINTEL_API_KEY must start with 'di_pat_' (got: ${DEMANDINTEL_API_KEY:0:8}...)" ;;
esac

# ---- args ------------------------------------------------------------------
CLIENT=""
SKILL=""
ALL=1
while [ $# -gt 0 ]; do
  case "$1" in
    --client) CLIENT="$2"; shift 2 ;;
    --skill)  SKILL="$2"; ALL=0; shift 2 ;;
    --all)    ALL=1; SKILL=""; shift ;;
    *) fail "Unknown flag: $1" ;;
  esac
done

# ---- auto-detect client ----------------------------------------------------
detect_client() {
  if [ -d "$HOME/.claude" ] || command -v claude >/dev/null 2>&1; then
    echo "claude"; return
  fi
  if [ -d "$HOME/.cursor" ]; then echo "cursor"; return; fi
  if [ -d "$HOME/.codex" ]; then echo "codex"; return; fi
  echo "claude"
}
if [ -z "$CLIENT" ]; then
  CLIENT=$(detect_client)
  info "Auto-detected client: ${c_bold}${CLIENT}${c_rst}"
else
  info "Target client: ${c_bold}${CLIENT}${c_rst}"
fi

case "$CLIENT" in
  claude|cursor|codex) ;;
  *) fail "Unsupported --client '$CLIENT' (expected claude|cursor|codex)" ;;
esac

# ---- fetch manifest --------------------------------------------------------
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

MANIFEST="$TMP/marketplace.json"
info "Fetching marketplace manifest…"
curl -fsSL "$MARKETPLACE_URL/marketplace.json" -o "$MANIFEST" \
  || fail "Could not fetch $MARKETPLACE_URL/marketplace.json"

# ---- skill install ---------------------------------------------------------
# We avoid jq (not universally installed). Parse the small, known-shape
# manifest with grep/sed — it's controlled by us, so this stays deterministic.
skills_from_manifest() {
  # Emits one line per skill: <name>|<file1>,<file2>,...
  python3 - "$MANIFEST" <<'PY' 2>/dev/null || node -e '
    const m = JSON.parse(require("fs").readFileSync(process.argv[1], "utf8"));
    for (const s of m.skills || []) console.log(s.name + "|" + (s.files||[]).join(","));
  ' "$MANIFEST"
import json, sys
m = json.load(open(sys.argv[1]))
for s in m.get("skills", []):
    print(s["name"] + "|" + ",".join(s.get("files", [])))
PY
}

skill_dir_for_client() {
  case "$CLIENT" in
    claude) echo "$HOME/.claude/skills" ;;
    cursor) echo "$HOME/.cursor/demandintel-skills" ;;
    codex)  echo "$HOME/.codex/demandintel-skills" ;;
  esac
}

SKILL_ROOT="$(skill_dir_for_client)"
mkdir -p "$SKILL_ROOT"

install_skill() {
  local name="$1" files_csv="$2"
  local dest="$SKILL_ROOT/$name"
  info "Installing skill: ${c_bold}${name}${c_rst}"
  mkdir -p "$dest"
  IFS=',' read -ra FILES <<< "$files_csv"
  for f in "${FILES[@]}"; do
    [ -z "$f" ] && continue
    local target="$dest/$f"
    mkdir -p "$(dirname "$target")"
    curl -fsSL "$MARKETPLACE_URL/skills/$name/$f" -o "$target" \
      || fail "Failed to download $name/$f"
  done
  ok "Installed to $dest"
}

installed=0
while IFS='|' read -r name files_csv; do
  [ -z "$name" ] && continue
  if [ "$ALL" = "1" ] || [ "$SKILL" = "$name" ]; then
    install_skill "$name" "$files_csv"
    installed=$((installed + 1))
  fi
done < <(skills_from_manifest)

[ "$installed" -gt 0 ] || fail "No skills installed. Check --skill name or --all."

# ---- configure MCP ---------------------------------------------------------
configure_claude() {
  if command -v claude >/dev/null 2>&1; then
    info "Registering MCP server via 'claude mcp add'…"
    # Remove existing entry so re-runs are idempotent.
    claude mcp remove demandintel >/dev/null 2>&1 || true
    claude mcp add --transport http demandintel "$MCP_URL" \
      --header "Authorization: Bearer $DEMANDINTEL_API_KEY" \
      && ok "MCP server registered." \
      || warn "'claude mcp add' failed — add it manually (see below)."
  else
    warn "Claude Code CLI ('claude') not on PATH — skipping auto-registration."
    cat <<EOF
Add this to ~/.claude.json manually:
{
  "mcpServers": {
    "demandintel": {
      "type": "http",
      "url": "$MCP_URL",
      "headers": { "Authorization": "Bearer $DEMANDINTEL_API_KEY" }
    }
  }
}
EOF
  fi
}

configure_cursor() {
  local cfg="$HOME/.cursor/mcp.json"
  mkdir -p "$(dirname "$cfg")"
  info "Cursor MCP config → $cfg"
  cat <<EOF
Add (or merge) this block into $cfg:

{
  "mcpServers": {
    "demandintel": {
      "url": "$MCP_URL?token=$DEMANDINTEL_API_KEY"
    }
  }
}
EOF
}

configure_codex() {
  local cfg="$HOME/.codex/config.toml"
  mkdir -p "$(dirname "$cfg")"
  info "Codex MCP config → $cfg"
  cat <<EOF
Add (or merge) this block into $cfg:

[mcp_servers.demandintel]
command = "npx"
args = ["-y", "mcp-remote", "$MCP_URL", "--header", "Authorization: Bearer $DEMANDINTEL_API_KEY"]
EOF
}

case "$CLIENT" in
  claude) configure_claude ;;
  cursor) configure_cursor ;;
  codex)  configure_codex ;;
esac

# ---- done ------------------------------------------------------------------
echo
ok "${c_bold}DemandIntel installed.${c_rst}"
cat <<EOF

Next steps:
  1. Restart your AI client so it picks up the new skill + MCP server.
  2. In Claude Code, run  /mcp  to confirm 'demandintel' appears (~31 tools).
  3. Try:  "Use demandintel to show the most-improved rep at Acme this week."

Docs:  https://demandintel.io/mcp
EOF
