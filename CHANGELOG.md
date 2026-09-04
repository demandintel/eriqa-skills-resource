# Changelog

All notable changes to the Eriqa Skills Resource are documented here.
This project follows [Semantic Versioning](https://semver.org) per skill, and a
dated log for the repository as a whole.

## [Unreleased]

## 2026-09-04 — Eriqa rebrand

### Changed
- Rebranded repository documentation, installer, marketplace metadata, skill content, MCP references, support details, and distribution guidance from Eriqa to Eriqa.
- Updated the canonical MCP endpoint to `https://mcp.app.eriqa.io/v1` and environment variables to `ERIQA_*`.
- Kept GitHub repository URLs under the existing `eriqa` organisation because that is the repository's current owner path.
- Bumped `sales-training-content-skill` to v1.0.1 for the branding/runtime metadata update.

## 2026-07-13 — Initial release

### Added
- **One-hit installer** (`install.sh`) — installs skills and registers the
  Eriqa MCP server for Claude Code, Cursor, or Codex in a single command.
- **Machine-readable catalog** (`marketplace.json`) — skills + MCP metadata.
- **Skill: `sales-training-content-skill` v1.0.0** — build sales, customer
  success, and support training grounded in the client's own Eriqa QA and
  competency data. Covers all 14 platform roles and 18 default frameworks, with
  trainer notes, exercises, assessment resources, and worked examples.
- **Downloadable bundle** under `downloads/` for manual installation.
