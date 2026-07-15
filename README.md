<div align="center">

# DemandIntel Skills Resource

**Official library of AI Agent Skills + one-hit installer for the DemandIntel MCP server.**

Install DemandIntel into Claude Code, Cursor, Codex, or any MCP-capable assistant — skills **and** MCP server, in a single command.

[Website](https://demandintel.io) · [MCP docs](https://demandintel.io/mcp) · [Get an API key](https://demandintel.io/app/settings)

</div>

---

## What this is

This repository hosts the **skills** and **installer** that connect the [DemandIntel](https://demandintel.io) platform to your AI assistant.

- **Skills** — structured expertise (SKILL.md + reference libraries) your assistant loads to do real work, e.g. building sales/CS/support training grounded in your own account data.
- **MCP server** — a remote connector that lets your assistant draw down your live DemandIntel data (competency scores, QA heatmaps, objections, calls, league tables) — ~31 tools.

The installer wires up both at once, so after one command your assistant is ready to use.

## Quick start

Mint a Personal Access Token (`di_pat_…`) at **[demandintel.io/app/settings → API / MCP](https://demandintel.io/app/settings)**, then run the command for your client.

### Claude Code (recommended — one hit)

```bash
curl -fsSL https://raw.githubusercontent.com/demandintel/demandintel-skills-resource/main/install.sh | DEMANDINTEL_API_KEY=di_pat_xxx bash
```

Installs the skills into `~/.claude/skills/` and registers the MCP server via `claude mcp add`. Restart Claude Code and run `/mcp` to confirm `demandintel` appears.

<details>
<summary><b>Cursor / IDEs</b></summary>

Add to `~/.cursor/mcp.json` (or a project `.cursor/mcp.json`):

```json
{
  "mcpServers": {
    "demandintel": {
      "url": "https://mcp.app.demandintel.io/v1?token=di_pat_xxx"
    }
  }
}
```

To also install the skill files, run the installer with `--client cursor`:

```bash
curl -fsSL https://raw.githubusercontent.com/demandintel/demandintel-skills-resource/main/install.sh | DEMANDINTEL_API_KEY=di_pat_xxx bash -s -- --client cursor
```
</details>

<details>
<summary><b>Codex</b></summary>

Add to `~/.codex/config.toml` (uses the `mcp-remote` stdio bridge):

```toml
[mcp_servers.demandintel]
command = "npx"
args = ["-y", "mcp-remote", "https://mcp.app.demandintel.io/v1", "--header", "Authorization: Bearer di_pat_xxx"]
```

Install skills with `... | bash -s -- --client codex`.
</details>

<details>
<summary><b>Direct run</b></summary>

```bash
DEMANDINTEL_API_KEY=di_pat_xxx bash -c "$(curl -fsSL https://raw.githubusercontent.com/demandintel/demandintel-skills-resource/main/install.sh)"
```
</details>

> Your API key is passed as an environment variable and is **never** stored in this repo or baked into the installer.

## What gets installed

1. Each skill's files (`SKILL.md` + `references/*`) into your client's skills directory, folder structure preserved.
2. The `demandintel` MCP server, pointed at `https://mcp.app.demandintel.io/v1` with your token.

Installer flags: `--client claude|cursor|codex` (auto-detected otherwise) · `--skill <name>` (one skill) · `--all` (default).

## Skill catalog

| Skill | Description | Version | Docs |
|-------|-------------|---------|------|
| [`sales-training-content-skill`](skills/sales-training-content-skill) | Build sales / CS / support training grounded in your own DemandIntel QA + competency data — trainer notes, exercises, assessments, worked examples across all 14 roles and 18 default frameworks. | 1.0.0 | [README](skills/sales-training-content-skill/README.md) · [SKILL.md](skills/sales-training-content-skill/SKILL.md) |

The machine-readable catalog lives in [`marketplace.json`](marketplace.json).

## Repository structure

```
demandintel-skills-resource/
├── install.sh                 One-hit installer (curl | bash)
├── marketplace.json           Machine-readable catalog (skills + MCP metadata)
├── skills/                    The skills, browsable for review
│   └── sales-training-content-skill/
│       ├── SKILL.md
│       ├── README.md
│       └── references/*.md
├── downloads/                 Pre-built .zip bundles for manual install
└── CHANGELOG.md
```

> This repository is a controlled distribution channel maintained by DemandIntel
> — public for read/download only. It does not accept external contributions.

## Manual install / downloads

Prefer not to run a script? Grab a bundle from [`downloads/`](downloads) and unzip the folder into your client's skills directory:

- **Claude Code:** `~/.claude/skills/`
- Then connect the MCP server with the config for your client (above).

Every skill keeps its `references/` folder alongside `SKILL.md` — do not separate them.

## Requirements

- An AI assistant that supports MCP (Claude Code, Cursor, Codex, ChatGPT desktop, Continue, …).
- A DemandIntel account and a Personal Access Token (`di_pat_…`).
- For the installer: `curl`, and `python3` or `node` (to read the manifest). For Codex: `npx`.

## Support

- MCP setup & tools: https://demandintel.io/mcp
- Account & tokens: https://demandintel.io/app/settings
- Questions or problems: email support@demandintel.io

## License

© DemandIntel. See [LICENSE](LICENSE). Skill outputs are draft material for you to review and adapt before use with your own team or clients.
