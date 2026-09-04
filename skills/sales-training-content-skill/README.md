# Sales & Customer Success Training Content Skill

Brought to you by Eriqa.

An AI Agent Skill for building professional B2B **sales, customer success, and support** training programmes. It draws down your own real account and campaign data from the Eriqa platform, applies established, tried and tested methodologies, and turns them into trainer notes, exercises, handouts, and assessments — grounded in your team's actual competency scores, objections, and calls rather than generic textbook scenarios.

## What it produces

- Trainer notes with timings, scripts, and delivery instructions
- Editable spreadsheet version of the trainer notes
- Participant handouts (framework reference cards, scenario practice sheets, quick reference guides)
- Playful, high-energy exercises for every role group
- Assessment resources — knowledge-check quizzes, 4-level competency rubrics (mirroring the platform's own scoring), role-play observer scorecards, and certification checklists

## What it covers

**Every role, call type, and framework the Eriqa platform serves:**

- **Sales roles** — Outbound BDR, Inbound SDR, Appointment Setter, Account Executive, Business Development Manager, Sales Engineer, Sales Manager
- **Customer Success roles** — Customer Success Manager, Onboarding Specialist, Renewals Manager, Account Manager
- **Support & Complaints roles** — Customer Support Agent, Technical Support Specialist, Complaints Handler
- **Topics** — objection handling, discovery, qualification, cold calling, negotiation, closing, onboarding, adoption, renewals, expansion, QBRs, voice of customer, support resolution, and complaints handling
- **Default frameworks** — MEDDIC/MEDDPICC, BANT, SPICED, GPCT, CHAMP, ANUM, BEBEDC, SPIN, Sandler Pain Funnel, negotiation hygiene, cold-opener discipline, customer onboarding, QBR/business review, renewal & retention, voice of customer, LAER, 5-step complaints handling, and support resolution quality — the same frameworks the platform scores your team against
- Buyer, customer, and service-recovery psychology woven through every topic
- Live grounding in your own Eriqa account and campaign data where the MCP server is connected

## Grounding in your own data (recommended)

This skill is at its best when connected to the **Eriqa MCP server** — it can pull your team's real competency scores, QA heatmaps, top objections, coaching plans, league tables, and call transcripts, and build examples, role-plays, and assessments from them.

1. Mint a Personal Access Token at https://eriqa.io/app/settings → **API / MCP**.
2. Add the Eriqa MCP server (`https://mcp.app.eriqa.io/v1`) to your MCP client (Claude Code, Codex, Cursor, ChatGPT desktop, Continue, etc.).
3. Invoke the skill and it will draw down your account context automatically.

See `references/mcp-data-sourcing.md` for the full tool-by-tool guide. The skill still works without a connection — it will fall back to material you provide or realistic generic scenarios.

## Installation

1. Download and unzip this package.
2. Place the whole `sales-training-content-skill` folder (containing `SKILL.md` and the `references` folder) into your AI client's skills directory.
3. In conversation, reference "Eriqa training skill" or "Eriqa sales training" alongside your request to invoke it, for example:

   > "Use the Eriqa training skill to build a 90 minute objection handling session for my SDR team, grounded in our Northwind campaign data."

## Folder structure

```
sales-training-content-skill/
  SKILL.md
  README.md
  references/
    framework-library.md      Frameworks and models for every topic and role, plus the platform-default alias map
    concept-library.md        Sales, CS, support, negotiation, and behavioural-science concepts
    exercises.md              Playful training activities and exercises for every role group
    assessment-resources.md   Quizzes, 4-level competency rubrics, role-play scorecards, certification checklists
    role-guides.md            Per-role session blueprints and trainer-notes skeletons for all 14 roles
    mcp-data-sourcing.md      How to draw down account & campaign context via the Eriqa MCP server
    worked-examples.md        Complete worked training sessions grounded in realistic drawn-down data
```

All files in `references/` must stay alongside `SKILL.md` for the skill to work. Do not separate them.

## A note on outputs

Everything this skill produces is draft training material for you to review, adapt, and take ownership of before delivering it to your own team or clients. If you choose to layer in a specific named methodology from your own knowledge, other tools, or other skills, that choice and its application is your responsibility.

## About Eriqa

Eriqa is a dynamic sales enablement and conversational intelligence platform designed to turn real customer conversations and performance evidence into better training, coaching and execution. Find out more at eriqa.io.
