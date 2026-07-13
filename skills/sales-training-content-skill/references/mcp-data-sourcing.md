# MCP Data Sourcing — Drawing Down Live Account & Campaign Context

This is the reference that makes DemandIntel training different from generic sales training. When the **DemandIntel MCP server** is connected to your client (Claude, Codex, Cursor, ChatGPT desktop, Continue, or any MCP-capable tool), you can pull the client's real account and campaign intelligence and build every scenario, example, role-play, and assessment from it — not from textbook cases.

Every tool below is a real DemandIntel MCP tool. In an MCP client the tool names are namespaced (e.g. `mcp__DemandIntel__competency_heatmap`, or just `competency_heatmap` depending on the client). Read-scope tokens are enough for everything in this guide except the explicitly generative calls (`generate_playbook`, `generate_report`, `run_assessment`), which consume credits.

> **Connect the server:** https://mcp.demandintel.io — mint a Personal Access Token at https://demandintel.io/app/settings → Headless Access, then add the URL to your MCP client. See the DemandIntel MCP docs for per-client setup.

---

## The golden rule

**Pull data first, then teach.** Before writing a single line of trainer notes, run the discovery sequence below and let the real numbers, objections, and transcript lines shape the session. A rep sits up when the role-play card is *their* deal and the objection is *their* team's #1 stall. Say where each example came from ("this is your team's most common objection this quarter, 34 calls").

**Anonymise before you publish.** Transcript excerpts and named reps are fine inside a coaching room, but strip prospect names, company names, and personal data before putting anything into a downloadable handout or a shared deck unless the user confirms it's internal-only.

---

## Step 0 — Orient

| Tool | What it gives you | Use it to |
|------|-------------------|-----------|
| `whoami` | The calling account, role, and scopes | Confirm you're pointed at the right workspace |
| `list_clients` | Clients the token can see | Pick the client to build training for |
| `get_client_features` | Which features/engagement mode a client has | Know whether competency, QA, reports are available |
| `list_campaigns` | Campaigns per client | Scope training to a specific campaign |
| `list_reps` / `list_team` | Reps and team members | Know who's being trained; segment strong vs developing |
| `list_frameworks` / `list_qa_frameworks` | Active competency + QA frameworks for the client | Find the exact standard reps are measured against |

**Discovery sequence:** `whoami` → `list_clients` → (choose client) → `get_client_features` → `list_campaigns` → `list_reps` → `list_frameworks`.

---

## Step 1 — Pull "what good and bad look like here"

This is the backbone of any skills session. Teach to the gaps the data shows, and use the strengths as internal proof points.

| Tool | What it gives you | Feeds which training artefact |
|------|-------------------|-------------------------------|
| `competency_heatmap` | Team/skill grid of competency scores (1-4) with weak spots | The topic to run, and the "why we're here" slide |
| `get_competency_scores` | Per-rep, per-skill scores with evidence | Segmenting the room; targeted practice |
| `get_framework` | The full competency framework: competencies → skills → 1-4 compounding level anchors | The exact rubric to teach and assess against (Phase 6) |
| `framework_readiness` | Whether a client has enough verified calls + context to assess | Whether to teach to a live framework or a generic one |
| `list_assessments` / `get_assessment` | Past assessment runs and their skill scores | Baseline for pre/post comparison; trend narrative |
| `run_assessment` *(credits)* | Kick off a fresh assessment for a framework + date range | Generate a current baseline before a programme |
| `drift_alerts` | Skills whose scores are sliding | Prioritise which competency to reinforce |

**Recipe — "what should we train on?"** `competency_heatmap` for the campaign → find the lowest-scoring competency across the team → `get_framework` to read its 1-4 anchors → build the session to move reps from their current level to the next. Open the session with the heatmap: "as a team we're a 2.1 on objection handling; here's what a 3 looks like."

---

## Step 2 — Pull the real objections and call patterns

| Tool | What it gives you | Feeds |
|------|-------------------|-------|
| `top_objections` | The objections reps actually hear, ranked, with frequency | Objection-handling examples & role-play cards (use verbatim) |
| `disposition_trend` | How call outcomes trend over time | The "cost of the status quo" framing; urgency |
| `disposition_mismatches` | Where reps logged an outcome the transcript doesn't support | Honesty/qualification training; QA calibration |
| `accuracy_trend` | Classification/QA accuracy over time | Manager & QA-calibration sessions |
| `call_stats` | Volume, duration, connect/outcome stats | Right-sizing expectations; activity coaching |

**Recipe — objection-handling session:** `top_objections` → take the top 5 verbatim → drop them straight into the LEARN walkthrough (Phase 4) and the Rephrase Challenge / Isolation Drill (see `exercises.md`). No invented objections needed.

---

## Step 3 — Pull real coaching signal

| Tool | What it gives you | Feeds |
|------|-------------------|-------|
| `coaching_plans` | Generated coaching plans per rep | 1:1 coaching sessions; personalised practice |
| `recommendations_list` | System recommendations for the account | Programme roadmap; what to prioritise |
| `qa_heatmap` / `qa_scores` | Call-quality scores by rep/topic | Support & complaints training; QA-led coaching |
| `qa_critical_errors` | Serious QA failures (e.g. missed disclosure, blame) | Non-negotiables in support/complaints sessions |
| `qa_action_plans` | Weekly QA action plans | The "actions for this week" close |
| `qa_improvement_metrics` | QA movement over time | Proving the training worked; renewal of programme |
| `rep_league_table` / `campaign_league_table` | Ranked performance | Friendly competition; "why we're here" |
| `most_improved_rep` | Who's climbed fastest | A relatable internal case study / peer teacher |

**Recipe — turn a coaching plan into a session:** `coaching_plans` for a rep or `qa_action_plans` for the team → the plan's focus areas become the session's learning objectives → build practice directly on the behaviours the plan calls out.

---

## Step 4 — Pull real call material for examples & role-plays

| Tool | What it gives you | Feeds |
|------|-------------------|-------|
| `list_calls` | Calls filtered by client/campaign/rep/disposition/date | Find representative good and bad calls |
| `get_call` | A single call with full transcript and metadata | Live-example scripts; role-play cards; fishbowl material |
| `tag_call` / `list_tags` | Tagging to curate a training set | Build a reusable library of "teaching calls" |

**Recipe — a "good vs bad" contrast:** `list_calls` filtered to a won and a lost deal on the same objection → `get_call` on each → excerpt the moment they diverged → present as a side-by-side in Phase 4, then have the room role-play the recovery. This is the single most powerful teaching move the platform enables.

---

## Step 5 — Reuse existing narrative & generate collateral

| Tool | What it gives you | Feeds |
|------|-------------------|-------|
| `ask` *(may use LLM credits)* | A natural-language answer to a specific question about the account | Fast summaries: "what are the top 3 reasons deals stall at Acme?" |
| `list_insight_snapshots` / `get_insight_snapshot` | Precomputed weekly/monthly insight snapshots | Ready-made "state of the team" opener |
| `list_reports` / `get_report` + `get_report_findings` / `get_report_recommendations` / `get_report_quotes` | Existing analysis reports with findings, recs, and quotable lines | Session narrative; verbatim customer quotes |
| `list_playbooks` / `generate_playbook` *(credits)* | Playbook docs; generate a LAER cheat sheet from competency gaps | A ready participant handout aligned to real gaps |
| `generate_report` *(credits)* | Generate a fresh analysis report | A baseline document to build a programme around |
| `export_presentation` *(credits)* | Google Slides / PowerPoint from a completed report | A starter deck you can adapt into training slides |

**Recipe — fastest possible grounded session:** `ask("What are the three biggest skill gaps and top objections for <client> this quarter, with example call lines?")` → use the answer to pick the topic, then confirm specifics with `competency_heatmap` + `top_objections`. `ask` is the quickest orientation; the structured tools give you the exact, citable detail.

---

## Putting it together — a 6-call grounding pass

For most sessions, this short sequence gives you everything you need:

1. `competency_heatmap` — pick the topic (lowest team competency).
2. `get_framework` — read the 1-4 anchors for that competency (your rubric).
3. `top_objections` — the real objections for examples and role-play.
4. `list_calls` + `get_call` — one good and one bad call to excerpt.
5. `qa_action_plans` or `coaching_plans` — the actions to close on.
6. `rep_league_table` or `most_improved_rep` — the hook for "why we're here".

Everything after that — trainer notes, handouts, exercises, assessment — is built from these six pulls plus the reference libraries.

---

## When the MCP server isn't connected

If the user hasn't connected DemandIntel, the skill still works — fall back to client-provided material, then to detail volunteered in conversation, then to realistic generic scenarios clearly flagged for later adaptation (see the sourcing priority order in `SKILL.md`). But always offer: *"If you connect your DemandIntel account, I can ground this in your team's real competency scores, objections, and calls."* That is the difference between good training and training the team recognises as their own.

---

## Credit & privacy notes

- **Read tools are free** on a read-scope token; generative tools (`ask`, `run_assessment`, `generate_playbook`, `generate_report`, `export_presentation`, `daily_briefings_run`) consume credits — flag this before running them at scale.
- **Respect data boundaries.** Only pull data for clients the token can access. Anonymise transcripts and named individuals before anything leaves the coaching room.
- **Prefer precomputed data** (`insight_snapshots`, existing `reports`, cached heatmaps) over regenerating, both for cost and speed.
