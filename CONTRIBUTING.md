# Contributing & authoring skills

This repository is maintained by DemandIntel. It hosts the skills and installer
that connect the platform to AI assistants.

## Skill structure

Every skill is a folder under `skills/<skill-name>/` and must contain:

```
skills/<skill-name>/
  SKILL.md            YAML frontmatter (name + description with triggers) + workflow
  README.md           Human-facing overview (optional but recommended)
  references/         Supporting reference libraries — MUST stay alongside SKILL.md
    *.md
```

- **`SKILL.md`** — the entry point. Its frontmatter `name` must match the folder
  name, and the `description` should list clear trigger phrases so assistants
  invoke it at the right time.
- **`references/`** — the skill's knowledge base. These files must ship together
  with `SKILL.md`; never separate them.

## Adding a skill to the catalog

1. Add the skill folder under `skills/`.
2. Register it in [`marketplace.json`](marketplace.json): append an entry with
   `name`, `version`, `description`, and the explicit `files` list (relative to
   the skill folder). The installer reads this list — keep it accurate.
3. Bump the entry's `version` on any change (Semantic Versioning).
4. Refresh the downloadable bundle in `downloads/` if you maintain one.
5. Update [`CHANGELOG.md`](CHANGELOG.md) and the catalog table in the README.

## Testing the installer

```bash
# Dry local test against this repo's raw files
curl -fsSL https://raw.githubusercontent.com/nimajnebrevilo/demandintel-skills-resource/main/install.sh \
  | DEMANDINTEL_API_KEY=di_pat_xxx bash

# Point at an alternate host while testing
DEMANDINTEL_MARKETPLACE_URL=https://<host> DEMANDINTEL_API_KEY=di_pat_xxx bash install.sh
```

Confirm the skill lands in `~/.claude/skills/<name>/` with `references/` intact,
that `claude mcp list` shows `demandintel`, and that `/mcp` lists the tools.

## House rules

- UK spelling in skill content, to match the existing libraries.
- Skills produce **draft** material — never imply finished, ready-to-send output.
- Keep the MCP endpoint consistent: `https://mcp.app.demandintel.io/v1`.
