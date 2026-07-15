# Maintainers (DemandIntel internal)

> Internal reference for the DemandIntel team. This repository is a controlled
> distribution channel — it does **not** accept external contributions.

## Adding or updating a skill

1. Add/update the skill folder under `skills/<skill-name>/` (`SKILL.md` +
   `references/`). The frontmatter `name` must match the folder name.
2. Update [`marketplace.json`](marketplace.json): the entry's `name`, `version`,
   `description`, and an accurate `files` list (relative to the skill folder).
   The installer reads this list — keep it exact.
3. Bump the skill `version` (Semantic Versioning) on any change.
4. Rebuild the download bundle in `downloads/` if maintained.
5. Update [`CHANGELOG.md`](CHANGELOG.md) and the README catalog table.

## Testing the installer

```bash
curl -fsSL https://raw.githubusercontent.com/demandintel/demandintel-skills-resource/main/install.sh \
  | DEMANDINTEL_API_KEY=di_pat_xxx bash

# Point at an alternate host while testing
DEMANDINTEL_MARKETPLACE_URL=https://<host> DEMANDINTEL_API_KEY=di_pat_xxx bash install.sh
```

Confirm the skill lands in `~/.claude/skills/<name>/` with `references/` intact,
`claude mcp list` shows `demandintel`, and `/mcp` lists the tools.

## Keeping it locked

This repo is public **for read/download only**. Recommended GitHub settings:

- Branch protection on `main` (require review, no direct pushes from non-maintainers).
- Disable forking and disable Issues/Discussions if inbound is not wanted, or
  keep Issues open purely for customer support triage.
- Restrict who can push to the DemandIntel org/team.

## House rules

- UK spelling in skill content.
- Skills produce **draft** material — never imply finished output.
- MCP endpoint stays `https://mcp.app.demandintel.io/v1`.
