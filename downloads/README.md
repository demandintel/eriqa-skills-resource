# Downloads

Pre-built `.zip` bundles for **manual installation** — for when you'd rather not
run the installer script.

| Bundle | Contents |
|--------|----------|
| `sales-training-content-skill.zip` | The full `sales-training-content-skill/` folder (`SKILL.md` + `references/`). |

## How to use

1. Download and unzip the bundle for the skill you want.
2. Move the unzipped `sales-training-content-skill/` folder into your client's
   skills directory:
   - **Claude Code:** `~/.claude/skills/`
3. Connect the Eriqa MCP server using the config for your client — see the
   [main README](../README.md#quick-start).

Keep each skill's `references/` folder alongside its `SKILL.md`; do not separate
them.

> Prefer one command? Use the [installer](../README.md#quick-start) instead —
> it downloads the skills **and** wires up the MCP server in one hit.
