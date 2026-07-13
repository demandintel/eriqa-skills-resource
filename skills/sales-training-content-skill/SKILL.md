---
name: sales-training-content-skill
description: |
  DemandIntel Sales & Customer Success Training Content Skill. Use when the user asks to create, build, or develop a sales, customer success, or support training session, workshop, programme, assessment, or coaching resource on any topic (objection handling, discovery, qualification, cold calling, negotiation, closing, customer success, onboarding, renewals, expansion, support, complaints handling, etc.) or for any role (BDR, SDR, appointment setter, AE, BDM, sales engineer, sales manager, CSM, onboarding specialist, renewals manager, account manager, support agent, technical support specialist, complaints handler).

  MANDATORY TRIGGERS: DemandIntel training, DemandIntel sales training skill, DemandIntel training skill, training programme, training session, sales training, CS training, support training, workshop, trainer notes, coaching resource, assessment, competency framework, scorecard, role-play, sales enablement, onboarding curriculum, train the team on, build training for, create a session on, develop training, certify the team.

  This skill: (1) Draws down live contextual intelligence from the client's own DemandIntel account and campaigns via the DemandIntel MCP server (competency scores, QA heatmaps, top objections, coaching plans, call transcripts, league tables), (2) Grounds content in a library of tried, tested, and trusted sales, CS, and support methodologies that mirror the platform's own default frameworks, (3) Builds psychology-based training content (not just scripts or battle cards), (4) Creates trainer notes with timings and delivery instructions, (5) Produces participant handouts, worked examples, exercises, and assessment resources for every role the platform serves.
---

# Sales & Customer Success Training Content Skill

Brought to you by DemandIntel.

## Overview

Build professional B2B sales, customer success, and support training programmes grounded in buyer psychology, established methodologies, and — crucially — the client's own real account and campaign data pulled live from the DemandIntel platform.

Output includes trainer notes (with timings), live examples, role-play scenarios, participant handouts, exercises, and assessment resources (quizzes, competency rubrics, observer scorecards, certification checklists).

The frameworks and concepts used are widely recognised, tried and tested approaches from across the sales, CS, and support disciplines. They deliberately mirror the **default methodology playbooks the DemandIntel platform itself scores against**, so training built with this skill teaches reps to operate the exact way the platform measures them. This skill selects and applies whichever frameworks are most relevant to the topic, role, call type, and context, rather than defaulting to a single methodology.

## What this skill covers

This skill serves **every role, call type, and framework the DemandIntel platform supports.**

**Roles (14):**

| Group | Roles |
|-------|-------|
| **Sales** | Outbound BDR, Inbound SDR, Appointment Setter, Account Executive (AE), Business Development Manager (BDM), Sales Engineer, Sales Manager |
| **Customer Success** | Customer Success Manager (CSM), Onboarding Specialist, Renewals Manager, Account Manager |
| **Support & Complaints** | Customer Support Agent, Technical Support Specialist, Complaints Handler |

**Call / conversation types (17):** cold outreach, discovery, demo, demo booking, event registration, inbound qualification, negotiation, closing, renewal, upsell/expansion, QBR/business review, customer onboarding, customer check-in, feedback call, support call, complaint call, escalation call.

**Default frameworks (mirrors the platform):** MEDDIC/MEDDPICC, BANT, SPICED, GPCT/GPCTBA&C&I, CHAMP, ANUM, BEBEDC, SPIN, Sandler Pain Funnel, negotiation hygiene, cold-outreach opener discipline, customer onboarding / success plan, QBR / business review, renewal & retention, voice-of-customer / feedback, LAER, 5-step complaints handling, and support resolution quality — each cross-referenced to its descriptive teaching name in `references/framework-library.md`.

## Workflow

### Phase 1: Clarify Requirements

Before building, clarify with the user. Where the DemandIntel MCP server is connected, **infer as many of these as possible from live data** (see Phase 2) and confirm rather than ask cold.

```
1. TOPIC: What skill/topic? (e.g. objection handling, discovery, qualification, closing, negotiation, onboarding, renewals, expansion, complaints handling)
2. ROLE: Which role(s) is this for? (see the 14 roles above — this drives framework selection)
3. DURATION: How long? (e.g. 60 mins, 90 mins, half day, multi-session programme)
4. DELIVERY: Online or in person? Will it be recorded?
5. AUDIENCE: Seniority and mix? (new hires, experienced reps, mixed, managers?)
6. GROUP SIZE: How many participants? (affects role-play and exercise structure)
7. REFERENCE MATERIAL: Existing objections, battle cards, playbooks, or past training to match style?
8. CONTEXTUAL DATA: Which DemandIntel client/campaign should I ground this in? (I will pull live competency scores, QA data, objections, and call examples)
9. ASSESSMENT: Do you want assessment resources too? (quiz, competency rubric, role-play scorecard, certification checklist)
10. OUTPUT FORMAT: Word, Excel, PowerPoint, or multiple?
```

If reference material or contextual data access is provided, use it. If not, proceed to Phase 2.

### Phase 2: Draw Down Live Context + Ground in Methodology

**This is what makes DemandIntel training different from generic sales training.** When the DemandIntel MCP server is connected (in Claude, Codex, Cursor, or any MCP client), pull the client's real account and campaign intelligence and build every scenario, example, and role-play from it.

**See `references/mcp-data-sourcing.md`** for the full tool-by-tool guide. The core moves:

1. **Establish the account.** `whoami` → `list_clients` → `list_campaigns` → `list_reps` to find the client, campaign, and team you're building for.
2. **Pull what "good" and "bad" look like here.** `competency_heatmap` and `get_competency_scores` (skill-level strengths and gaps by rep/team), `qa_heatmap` and `qa_scores` (call quality), `framework_readiness` and `get_framework` (the exact competencies the platform scores this client against — teach to these).
3. **Pull the real objections and patterns.** `top_objections`, `disposition_trend`, `disposition_mismatches`, `accuracy_trend` — use the actual objections reps hear, not textbook ones.
4. **Pull real coaching signal.** `coaching_plans`, `recommendations_list`, `qa_action_plans`, `qa_critical_errors`, `most_improved_rep`, `rep_league_table`, `campaign_league_table`.
5. **Pull real call material.** `list_calls` → `get_call` for transcript excerpts to turn into live examples and role-play cards (anonymise names before use).
6. **Pull existing narrative.** `list_insight_snapshots`/`get_insight_snapshot`, `list_reports`/`get_report`, `list_playbooks`, and `ask(...)` for a natural-language summary of a specific question.

Then select the methodology and framework for the topic **and role**:

- **See `references/framework-library.md`** for the specific model to teach, the platform-default alias table, and the per-role framework map.
- **See `references/concept-library.md`** for the underlying buyer/behavioural psychology.

Ground every scenario in the drawn-down data. **Priority order:** live MCP data > client-provided reference material > detail volunteered in conversation > realistic generic scenario (last resort, clearly flagged for later adaptation).

### Phase 3: Build Training Structure

Structure every session with this flow (adjust proportions by topic and role):

```
1. WHY WE'RE HERE (5-10%)        Purpose, objectives, why it matters to them (use their own league-table / QA data to make it real)
2. PSYCHOLOGY / FOUNDATION (15-20%)  Buyer or customer psychology; mental models (fast vs slow thinking, loss aversion, service recovery)
3. FRAMEWORK / MODEL (20-25%)    The chosen framework for this topic + role, with memorable structure; step by step
4. LIVE EXAMPLES (20-25%)        Walk the framework through the client's REAL scenarios/data; exact words + why each step works
5. PRACTICE / ROLE-PLAY (15-20%) Structured, playful practice on real scenarios; coaching points; debrief
6. ASSESSMENT & ACTIONS (5-10%)  Knowledge check or scored role-play, key takeaways (max 4), specific actions for this week
```

### Phase 4: Create Trainer Notes

Format trainer notes as a table:

| Timing | Topic | Purpose | Process | Resources |
|--------|-------|---------|---------|-----------|

**Process column must include:** `SAY:` exact script for key moments · `EXPLAIN:` content (bullets) · `ASK:` questions to pose · `ACTIVITY:` whiteboard/poll/role-play · `TRANSITION:` how to move on.

**For LIVE EXAMPLES, include full scripts** grounded in drawn-down data:

```
OBJECTION / SITUATION: "[Exact line — ideally from top_objections or a real transcript]"

[STEP 1 — e.g. PAUSE]:            [What to do]
[STEP 2 — e.g. ACKNOWLEDGE]:      "[Exact words]"
[STEP 3 — e.g. DIAGNOSE]:         "[Diagnostic question]"  → This reveals: [what the answer tells you]
[STEP 4 — e.g. REFRAME]:          If [answer A]: "[Response A]"  ·  If [answer B]: "[Response B]"
[STEP 5 — e.g. ADVANCE]:          "[Closing / next-step question]"
```

See `references/role-guides.md` for a ready-made session blueprint and trainer-notes skeleton for each of the 14 roles, and `references/worked-examples.md` for complete worked sessions grounded in realistic account data.

### Phase 5: Create Participant Handouts

1. **Framework Reference Card** (1 page) — core model, steps, 2-3 example phrases per step.
2. **Scenario Practice Sheet** — 3-5 scenarios (from real data), space for notes.
3. **Quick Reference Guide** (optional) — common situations + diagnostic questions (not a battle card).

### Phase 6: Create Assessment Resources

Where the user wants to measure learning or certify the team, build assessment resources that mirror the platform's own scoring. **See `references/assessment-resources.md`.** These include:

- **Knowledge-check quizzes** per topic (with answer keys).
- **4-level competency rubrics** matching the platform's compounding 1-4 scale, so a trainer's scoring lines up with what `competency_heatmap` / `get_assessment` report.
- **Role-play observer scorecards** tied to the required behaviours of the relevant framework.
- **Pre/post assessments and certification checklists.**

Tie assessment criteria back to the drawn-down `get_framework` competencies wherever possible, so training, practice, and platform measurement all speak the same language.

### Phase 7: Output Files

Create files using the appropriate skills:

- **Trainer Notes:** Word (.docx) via the docx skill.
- **Editable Version:** Excel (.xlsx) via the xlsx skill.
- **Handouts / Assessments:** Word (.docx) or PDF.
- **Slides (optional):** PowerPoint via the pptx skill, or via the platform's own `export_presentation` / `generate_report` where a report already exists.

Save all files to the user's working directory or requested location.

Every output is **draft training material** for the user to review, adapt, and take ownership of before delivering it to their own team or clients. If the user layers in a specific named methodology from their own knowledge or other tools, that choice and its application is theirs.

---

## Design Principles

### Play Before Pedagogy

Practice should feel like games, not tests. Favour competition, silliness, sound effects, physical movement, and quick wins over long explanations or solemn role-play. Mild stakes (a bell, a scoreboard, a daft forfeit, a time limit) lower the fear of practising an unfamiliar technique out loud in front of peers, which is usually the real barrier. When choosing an activity from `references/exercises.md`, favour the version that generates laughter and friendly competition over the one that merely covers the content.

### Psychology Over Scripts

Every session must be grounded in psychology — **WHY** buyers and customers behave as they do, **WHAT** is happening in their mind, **HOW** to shift their thinking. Avoid pure "if they say X, say Y" battle cards. Teach participants to (1) diagnose the root cause, (2) choose a response based on the diagnosis, (3) understand why it works.

### Ground in Their Own Data

Trainer notes and handouts land far better when the examples are recognisably the team's own deals, objections, and calls. Always prefer live MCP data or client-provided material over invented scenarios. When you use a real objection or call, say where it came from ("this is your team's #2 objection this quarter") — it dramatically raises engagement and credibility.

### Assess the Way the Platform Assesses

The platform scores reps on an even, compounding **1-4 competency scale** backed by transcript evidence. Training assessment should use the same scale and, where possible, the same competencies (`get_framework`). This means a rep's training score and their live platform score are directly comparable, and coaching conversations stay evidence-based rather than opinion-based.

### Engagement for Online Delivery

For online/recorded sessions: whiteboard activities every 10-15 mins · polls/chat for larger groups · visible timers during practice · trainer-called pairs instead of breakout rooms unless specified.

### Cultural Adaptation

If the audience spans US and UK:

| Aspect | US Approach | UK Approach |
|--------|-------------|-------------|
| Tone | Direct, get to the point | Polite, professional, measured |
| Assertiveness | Push back acceptable | Know your limits, don't over-push |
| Humour | Informal, chummy | Dry, subtle, understated |

---

## Contextual Intelligence Sourcing

Content should be grounded in the client's actual sales/CS/support data wherever it's available, not textbook examples.

**Priority order for sourcing scenarios and examples:**

1. **Live data from the DemandIntel MCP server** — competency scores, QA heatmaps, top objections, coaching plans, league tables, call transcripts, reports, insight snapshots. See `references/mcp-data-sourcing.md`.
2. **Client-provided reference material** — battle cards, playbooks, past training content.
3. **Client-specific detail volunteered in the requirements conversation** — industry, ICP, common deal shapes, role.
4. **Realistic generic scenarios** as a last resort, clearly written to be easily adapted with real client detail later.

Always prefer option 1 or 2 over invented scenarios.

---

## Resources

### references/
- `framework-library.md` — Frameworks and models for each topic and role, the platform-default alias table, and the per-role framework map.
- `concept-library.md` — Established sales, CS, support, negotiation, and behavioural-science concepts.
- `exercises.md` — Library of playful training activities and exercises for every role group.
- `assessment-resources.md` — Quizzes, 4-level competency rubrics, role-play scorecards, and certification checklists.
- `role-guides.md` — Per-role session blueprints and trainer-notes skeletons for all 14 roles.
- `mcp-data-sourcing.md` — How to draw down account and campaign context via the DemandIntel MCP server, tool by tool.
- `worked-examples.md` — Complete worked training sessions grounded in realistic drawn-down data.

All files in `references/` must stay alongside `SKILL.md` for the skill to work. Do not separate them.

---

## About

This skill is provided by DemandIntel. To invoke it, reference "DemandIntel training skill" or "DemandIntel sales training" alongside your request. Connect the DemandIntel MCP server (https://mcp.demandintel.io) to ground every session in your own account and campaign data.
