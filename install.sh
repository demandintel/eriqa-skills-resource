#!/usr/bin/env bash
# Eriqa — one-hit skills + MCP installer
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/demandintel/eriqa-skills-resource/main/install.sh | ERIQA_API_KEY=di_pat_xxx bash

set -euo pipefail

MARKETPLACE_URL="${ERIQA_MARKETPLACE_URL:-https://raw.githubusercontent.com/demandintel/eriqa-skills-resource/main}"
MCP_URL="${ERIQA_MCP_URL:-https://mcp.app.eriqa.io/v1}"
MCP_NAME="eriqa"

c_bold=$(printf '\033[1m')
c_red=$(printf '\033[31m')
c_grn=$(printf '\033[32m')
c_ylw=$(printf '\033[33m')
c_rst=$(printf '\033[0m')

info() { printf '%s→%s %s\n' "$c_bold" "$c_rst" "$*"; }
ok()   { printf '%s✓%s %s\n' "$c_grn" "$c_rst" "$*"; }
warn() { printf '%s⚠%s %s\n' "$c_ylw" "$c_rst" "$*"; }
fail() { printf '%s✗%s %s\n' "$c_red" "$c_rst" "$*" >&2; exit 1; }
need() { command -v "$1" >/dev/null 2>&1 || fail "Missing required tool: $1"; }

need curl

if [ -z "${ERIQA_API_KEY:-}" ]; then
  cat >&2 <<EOF
${c_red}${c_bold}ERIQA_API_KEY is not set.${c_rst}

Mint a Personal Access Token at:
  https://eriqa.io/app/settings  →  API / MCP

Then re-run:
  curl -fsSL ${MARKETPLACE_URL}/install.sh | ERIQA_API_KEY=di_pat_xxx bash
EOF
  exit 1
fi

case "$ERIQA_API_KEY" in
  di_pat_*) ;;
  *) fail "ERIQA_API_KEY must start with 'di_pat_'" ;;
esac

CLIENT=""
SKILL=""
ALL=1
while [ $# -gt 0 ]; do
  case "$1" in
    --client) [ $# -ge 2 ] || fail "--client requires a value"; CLIENT="$2"; shift 2 ;;
    --skill)  [ $# -ge 2 ] || fail "--skill requires a value"; SKILL="$2"; ALL=0; shift 2 ;;
    --all)    ALL=1; SKILL=""; shift ;;
    *) fail "Unknown flag: $1" ;;
  esac
done

detect_client() {
  if [ -d "$HOME/.claude" ] || command -v claude >/dev/null 2>&1; then echo claude; return; fi
  if [ -d "$HOME/.cursor" ]; then echo cursor; return; fi
  if [ -d "$HOME/.codex" ]; then echo codex; return; fi
  echo claude
}

if [ -z "$CLIENT" ]; then
  CLIENT=$(detect_client)
  info "Auto-detected client: ${c_bold}${CLIENT}${c_rst}"
else
  info "Target client: ${c_bold}${CLIENT}${c_rst}"
fi
case "$CLIENT" in claude|cursor|codex) ;; *) fail "Unsupported --client '$CLIENT'" ;; esac

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
MANIFEST="$TMP/marketplace.json"
info "Fetching Eriqa marketplace manifest…"
curl -fsSL "$MARKETPLACE_URL/marketplace.json" -o "$MANIFEST" || fail "Could not fetch marketplace.json"

skills_from_manifest() {
  if command -v python3 >/dev/null 2>&1; then
    python3 - "$MANIFEST" <<'PY'
import json, sys
with open(sys.argv[1], encoding="utf-8") as f:
    m = json.load(f)
for s in m.get("skills", []):
    print(s["name"] + "|" + ",".join(s.get("files", [])))
PY
  elif command -v node >/dev/null 2>&1; then
    node -e 'const m=JSON.parse(require("fs").readFileSync(process.argv[1],"utf8")); for(const s of m.skills||[]) console.log(s.name+"|"+(s.files||[]).join(","));' "$MANIFEST"
  else
    fail "python3 or node is required to read marketplace.json"
  fi
}

skill_dir_for_client() {
  case "$CLIENT" in
    claude) echo "$HOME/.claude/skills" ;;
    cursor) echo "$HOME/.cursor/eriqa-skills" ;;
    codex)  echo "$HOME/.codex/eriqa-skills" ;;
  esac
}

SKILL_ROOT="$(skill_dir_for_client)"
mkdir -p "$SKILL_ROOT"

install_skill() {
  local name="$1" files_csv="$2" dest="$SKILL_ROOT/$1"
  info "Installing skill: ${c_bold}${name}${c_rst}"
  mkdir -p "$dest"
  IFS=',' read -ra FILES <<< "$files_csv"
  for f in "${FILES[@]}"; do
    [ -z "$f" ] && continue
    mkdir -p "$(dirname "$dest/$f")"
    curl -fsSL "$MARKETPLACE_URL/skills/$name/$f" -o "$dest/$f" || fail "Failed to download $name/$f"
  done
  ok "Installed to $dest"
}

installed=0
while IFS='|' read -r name files_csv; do
  [ -z "$name" ] && continue
  if [ "$ALL" = 1 ] || [ "$SKILL" = "$name" ]; then
    install_skill "$name" "$files_csv"
    installed=$((installed + 1))
  fi
done < <(skills_from_manifest)
[ "$installed" -gt 0 ] || fail "No skills installed. Check --skill name or use --all."

configure_claude() {
  if command -v claude >/dev/null 2>&1; then
    info "Registering Eriqa MCP server…"
    claude mcp remove "$MCP_NAME" >/dev/null 2>&1 || true
    claude mcp add --transport http "$MCP_NAME" "$MCP_URL" --header "Authorization: Bearer $ERIQA_API_KEY" \
      && ok "Eriqa MCP server registered." \
      || warn "Automatic MCP registration failed; add Eriqa manually."
  else
    warn "Claude Code CLI not found; add this MCP server manually:"
    cat <<EOF
{
  "mcpServers": {
    "eriqa": {
      "type": "http",
      "url": "$MCP_URL",
      "headers": { "Authorization": "Bearer $ERIQA_API_KEY" }
    }
  }
}
EOF
  fi
}

configure_cursor() {
  local cfg="$HOME/.cursor/mcp.json"
  mkdir -p "$(dirname "$cfg")"
  cat <<EOF
Add or merge into $cfg:
{
  "mcpServers": {
    "eriqa": {
      "url": "$MCP_URL?token=$ERIQA_API_KEY"
    }
  }
}
EOF
}

configure_codex() {
  local cfg="$HOME/.codex/config.toml"
  mkdir -p "$(dirname "$cfg")"
  cat <<EOF
Add or merge into $cfg:
[mcp_servers.eriqa]
command = "npx"
args = ["-y", "mcp-remote", "$MCP_URL", "--header", "Authorization: Bearer $ERIQA_API_KEY"]
EOF
}

case "$CLIENT" in
  claude) configure_claude ;;
  cursor) configure_cursor ;;
  codex) configure_codex ;;
esac

echo
ok "${c_bold}Eriqa installed.${c_rst}"
cat <<EOF

Next steps:
  1. Restart your AI client.
  2. In Claude Code, run /mcp and confirm 'eriqa' appears.
  3. Try: "Use Eriqa to show the most-improved rep at Acme this week."

Docs: https://eriqa.io/mcp
EOF
