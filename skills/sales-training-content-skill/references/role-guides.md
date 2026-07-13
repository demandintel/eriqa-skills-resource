# Role Guides — Per-Role Session Blueprints & Trainer-Notes Skeletons

Ready-made session blueprints for all **14 roles** the DemandIntel platform serves. Each guide gives you a differentiated 60-90 minute session you could run tomorrow: who the role is, the frameworks to teach, a timed trainer-notes skeleton, the exact MCP pulls to ground it, the exercises and assessment to reach for, and the failure modes to watch.

## How to use these with the SKILL.md workflow

These blueprints slot into **Phase 3-4** of the `SKILL.md` workflow. They are the *skeleton*; the *muscle* is the client's own data. So:

1. **Ground it first.** Before touching a blueprint, run the drawn-down pass in `references/mcp-data-sourcing.md` (the "6-call grounding pass" is enough for most sessions). Every blueprint below ends with a **Ground it** line naming the specific pulls for that role. Real objections, real call excerpts, and the team's real 1-4 scores turn a generic skeleton into training the team recognises as their own.
2. **Teach to the scored framework.** The **Default frameworks** listed per role mirror the platform's own defaults, but a client may run a customised rubric — always reconcile with `get_framework` / `list_frameworks` (and `list_qa_frameworks` for support roles) and teach to the levels the platform actually reports. Framework acronyms map to their descriptive teaching names in `references/framework-library.md`.
3. **Keep the 6-part flow.** Every blueprint follows the same spine from `SKILL.md` Phase 3 — *Why we're here → Psychology → Framework → Live examples → Practice/role-play → Assessment & actions* — so a trainer who runs one can run any of them.
4. **Play before pedagogy.** The named exercises come from `references/exercises.md`; favour the version that generates laughter and friendly competition. Assessment artefacts (4-level rubrics, observer scorecards, knowledge checks, certification checklists) come from `references/assessment-resources.md` and use the same compounding 1-4 scale the platform scores on, so a rep's training score and their live score are directly comparable.

> Scores below are on the platform's compounding **1-4 competency scale**: **L1 Developing → L2 Competent → L3 Strong → L4 Role Model**, each level backed by transcript evidence.

---

## Role → Framework → Data quick map

| Role | Group | Default frameworks | Primary call types | Key MCP pulls |
|------|-------|--------------------|--------------------|---------------|
| **Outbound BDR** | Sales | Permission-Based Opener Discipline, BANT, CHAMP, ANUM | cold_outreach | `top_objections`, `get_call` (cold calls), `rep_league_table`, `call_stats` |
| **Inbound SDR** | Sales | BANT, GPCT | inbound_qualification, discovery | `top_objections`, `disposition_trend`, `get_call` (inbound), `competency_heatmap` |
| **Appointment Setter** | Sales | Permission-Based Opener Discipline, BANT | cold_outreach, demo_booking | `top_objections`, `call_stats`, `disposition_trend`, `rep_league_table` |
| **Account Executive (AE)** | Sales | MEDDIC/MEDDPICC, SPIN, SPICED, GPCT, CHAMP, ANUM, BEBEDC, Sandler Pain Funnel, negotiation hygiene | discovery, demo, negotiation, closing | `competency_heatmap`, `get_framework`, `top_objections`, `get_call` (won vs lost), `coaching_plans` |
| **Business Development Manager (BDM)** | Sales | MEDDIC, SPIN, CHAMP, BEBEDC, negotiation hygiene | discovery, demo, negotiation | `competency_heatmap`, `get_call` (multi-threaded deals), `top_objections`, `coaching_plans` |
| **Sales Engineer** | Sales | MEDDIC, SPIN | discovery, demo | `get_framework`, `get_call` (technical demos), `top_objections` (technical), `qa_heatmap` |
| **Sales Manager** | Sales | MEDDIC, negotiation hygiene + coaching/calibration | coaching (across all) | `competency_heatmap`, `get_competency_scores`, `accuracy_trend`, `rep_league_table`, `coaching_plans` |
| **Customer Success Manager (CSM)** | Customer Success | SPICED, Success Plan & Time-to-Value, Business Review, Renewal & Retention, Voice of Customer, LAER | onboarding, check_in, QBR, renewal, upsell, feedback | `competency_heatmap`, `get_call` (QBRs, renewals), `qa_heatmap`, `coaching_plans` |
| **Onboarding Specialist** | Customer Success | Success Plan & Time-to-Value, Voice of Customer | customer_onboarding, customer_check_in | `get_call` (onboarding), `qa_heatmap`, `call_stats`, `top_objections` (activation blockers) |
| **Renewals Manager** | Customer Success | Renewal & Retention, SPICED, Business Review | renewal, QBR | `top_objections` (renewal), `get_call` (renewals), `disposition_trend`, `coaching_plans` |
| **Account Manager** | Customer Success | Business Review, SPICED, Renewal & Retention, Success Plan | QBR, renewal, upsell, check_in | `get_call` (QBRs/upsells), `top_objections`, `competency_heatmap`, `rep_league_table` |
| **Customer Support Agent** | Support & Complaints | LAER, Support Resolution Quality, 5-step Complaints, Voice of Customer | support, complaint, escalation | `qa_heatmap`, `qa_critical_errors`, `qa_action_plans`, `get_call` (support) |
| **Technical Support Specialist** | Support & Complaints | Support Resolution Quality, LAER, 5-step Complaints | support, escalation | `qa_heatmap`, `qa_critical_errors`, `get_call` (escalations), `qa_action_plans` |
| **Complaints Handler** | Support & Complaints | 5-step Complaints Handling, LAER | complaint, escalation | `qa_critical_errors`, `qa_heatmap`, `get_call` (complaints), `qa_action_plans` |

**Descriptive-name reminder:** on the platform these appear as Permission-Based Opener Discipline, Foundational Fit Check (BANT), Challenge-First Fit Check (CHAMP), Authority-First Qualifier (ANUM), Enterprise Deal Map (MEDDIC), SPIN Questioning Model, Recurring Revenue Fit Check (SPICED), Goal-Led Discovery Map (GPCT), Evaluation & Competition Map (BEBEDC), Pain Funnel (Sandler), Trade Never Concede (negotiation hygiene), Success Plan & Time-to-Value Model, Business Review Structure, Renewal & Retention Model, Voice of Customer Model, Listen-Acknowledge-Explore-Respond (LAER), Complaint Resolution Ladder (5-step), and First-Contact Resolution Model (Support Resolution Quality). Full map in `references/framework-library.md`.

---

# Role Guides

Three groups below. Within each, one subsection per role. A BDR session should feel fast, noisy, and competitive; a Complaints Handler session should feel calm, deliberate, and psychologically safe. Keep that contrast — it is the point.

---

## Sales Roles

### Outbound BDR

**Who they are / what a good call looks like.** The team's first voice a cold prospect hears. A good call earns permission in the first 10 seconds, survives the reflex brush-off without arguing, qualifies just enough (fit, need, timing), and lands a specific meeting — all inside 3-4 minutes. Success is measured in booked, held meetings, not in "good conversations".

**Default frameworks to teach.** Permission-Based Opener Discipline (cold-opener control) as the spine; BANT / CHAMP / ANUM for lightweight qualification once engaged. Keep qualification *light* — a BDR qualifies to book, not to close.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Make it real with their own numbers | **SAY:** "Last month the team dialled X and booked Y — the gap between top and bottom of the board is almost entirely the first 15 seconds." **ACTIVITY:** show `rep_league_table` + connect-to-meeting rate. | League table slide, `call_stats` |
| 8-22 min | Psychology | Reaction vs objection; why the brush-off isn't about you | **EXPLAIN:** first 30 sec = System-1 reflex, not logic. "Not interested" is a reaction, protecting time/energy — pattern-interrupt, don't argue. **ASK:** "What's your gut reaction when a cold caller hits *you*?" | `concept-library.md` (fast/slow thinking) |
| 22-38 min | Framework | Permission-based opener + when to qualify | **EXPLAIN:** opener = pattern interrupt → permission ask → reason to stay. Then BANT/CHAMP *only after* they lean in. **SAY (model opener):** "I know I've caught you cold — give me 30 seconds and then tell me to go away if it's not for you?" | Framework Reference Card |
| 38-55 min | Live examples | Hear the real brush-offs and a clean recovery | **ACTIVITY:** play the team's **#1 and #2 objections verbatim** (from `top_objections`); walk each through pause → acknowledge → diagnose → reframe → re-ask for the meeting. | `top_objections`, `get_call` excerpt |
| 55-78 min | Practice / role-play | Reps out loud, competitive, playful | **ACTIVITY:** The Objection Relay + The Pause Challenge — rapid-fire real brush-offs, points for a clean 1.5-sec pause and a re-ask; bell for arguing. | `exercises.md` |
| 78-90 min | Assessment & actions | Score to the scale, commit | **ACTIVITY:** 60-sec scored mock cold-open against the observer scorecard. **ASK:** each rep names one opener line they'll use on Monday. | Cold-Open Observer Scorecard |

**Ground it.** `top_objections` (verbatim brush-offs) + `get_call` on 1-2 cold calls (one that booked, one that died) + `rep_league_table` and `call_stats` for the "why we're here" hook. Optionally `disposition_trend` for the cost of the status quo.

**Recommended exercise(s).** *The Objection Relay* and *The Pause Challenge* (energisers, high-tempo, competitive) — with *The Rephrase Challenge* if you have longer.

**Assessment.** Cold-Open / Objection-Handling Observer Scorecard tied to opener discipline + a 4-level rubric on "Objection Handling" from `get_framework`; a short cold-outreach certification checklist for new hires.

**Watch-outs.** (1) Over-qualifying — turning a 3-minute booking call into a mini-discovery and killing momentum. (2) Arguing with reflexes — treating a 5-second "not interested" as a logical objection to be defeated rather than a reaction to be side-stepped.

---

### Inbound SDR

**Who they are / what a good call looks like.** They catch warm hands raised via the website, content, or events. The prospect already has *some* intent; the job is to qualify fast without interrogating, confirm the goal behind the enquiry, and route to the right next step (AE demo or nurture) with the context captured. A good call feels like helpful triage, not a gate.

**Default frameworks to teach.** BANT (Foundational Fit Check) for the four-point check; GPCT (Goal-Led Discovery Map) to lead with the *goal* behind the enquiry — inbound intent deserves a goal-first, not budget-first, opening.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Warm ≠ won; leaks cost pipeline | **SAY:** "These people came to *us* — where are we losing them?" **ACTIVITY:** show `disposition_trend` on inbound outcomes. | `disposition_trend`, `competency_heatmap` |
| 8-22 min | Psychology | Intent + the tyranny of speed; reciprocity of helpfulness | **EXPLAIN:** raised-hand buyers expect help, not a form read aloud; lead with their goal to lower guard. **ASK:** "What signals tell you this is hot vs just browsing?" | `concept-library.md` |
| 22-38 min | Framework | GPCT goal-first, BANT to confirm fit | **EXPLAIN:** open on Goal ("what prompted you to reach out today?") → Plans/Timeline → confirm Budget/Authority lightly. **SAY:** map each BANT letter to a natural question, never a checklist. | Framework Reference Card |
| 38-52 min | Live examples | Real inbound calls, good vs rushed | **ACTIVITY:** `get_call` on a strong inbound qual and a rushed one; contrast where the goal question was asked (or skipped). | `get_call` excerpts |
| 52-74 min | Practice / role-play | Fast qual without interrogation | **ACTIVITY:** Kipling's Six Servants (who/what/why/when/where/how) drill on a real enquiry, then a structured qual role-play with a timer. | `exercises.md` |
| 74-90 min | Assessment & actions | Score + routing discipline | **ACTIVITY:** scored 4-min mock inbound qual; check goal-first + clean handover note. **ASK:** one qualifying question each rep will stop skipping. | Qualification Observer Scorecard |

**Ground it.** `top_objections` (inbound stalls like "just researching") + `disposition_trend` on inbound dispositions + `get_call` on 2 inbound qualification calls + `competency_heatmap` to pick the weakest qualification skill.

**Recommended exercise(s).** *Kipling's Six Servants* (questioning breadth) and *Structured Objection Handling Role-Play* scoped to inbound stalls.

**Assessment.** Qualification Observer Scorecard tied to BANT/GPCT behaviours + 4-level rubric on "Qualification / Discovery".

**Watch-outs.** (1) Interrogation mode — machine-gunning BANT questions and burning the goodwill the prospect arrived with. (2) Under-qualifying the hot ones — booking every raised hand into an AE demo without capturing goal/timeline, so the AE inherits an empty shell.

---

### Appointment Setter

**Who they are / what a good call looks like.** A specialist whose single deliverable is a *held* meeting. Even lighter-touch than a BDR: minimal friction, a crisp reason to meet, one strong call-to-action, and a diarised slot with the decision-maker. A good call is short, confident, and ends with a confirmed calendar invite — nothing more, nothing less.

**Default frameworks to teach.** Permission-Based Opener Discipline for the open; BANT only to the depth of "is this worth a meeting?" — resist any temptation to sell. The meeting *is* the sale.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-6 min | Why we're here | One metric: meetings held | **SAY:** "We're not here to have great chats — we're here to fill diaries with the right people." **ACTIVITY:** `rep_league_table` on set-to-held rate. | League table, `call_stats` |
| 6-20 min | Psychology | Friction & commitment; small yes before big yes | **EXPLAIN:** every extra ask lowers conversion; a specific time ("Thursday 2pm?") converts better than "when suits?". Loss-averse buyers say yes to *low-cost* next steps. | `concept-library.md` |
| 20-35 min | Framework | Opener → reason → single CTA | **EXPLAIN:** interrupt → permission → one-line reason to meet → assumptive specific-time close. **SAY (model close):** "I'll grab our specialist for 15 minutes Thursday at 2 — does that work, or is Friday better?" | Framework Reference Card |
| 35-50 min | Live examples | Real setter calls, friction spotted | **ACTIVITY:** `get_call` on a booked vs stalled setter call; count the asks; find where friction crept in. | `get_call` excerpts |
| 50-72 min | Practice / role-play | Tight, assumptive closes | **ACTIVITY:** Phrase Polish on the CTA line + rapid Objection Relay on "just email me" / "send info". Points for fewest words to the booked slot. | `exercises.md` |
| 72-90 min | Assessment & actions | Score the close, commit | **ACTIVITY:** scored 2-min mock booking. **ASK:** one friction point each setter will remove. | Booking Observer Scorecard |

**Ground it.** `top_objections` (deflections like "send me an email") + `call_stats` and `disposition_trend` (set-to-held) + `get_call` on 2 booking calls + `rep_league_table`.

**Recommended exercise(s).** *Phrase Polish* (tighten the CTA) and *The Objection Relay* on deflection lines.

**Assessment.** Booking / Cold-Open Observer Scorecard focused on opener discipline and single-CTA close; short booking certification checklist.

**Watch-outs.** (1) Selling instead of booking — pitching features and talking the prospect out of curiosity. (2) Vague closes — "when are you free?" instead of an assumptive specific time, which quietly halves conversion.

---

### Account Executive (AE)

**Who they are / what a good call looks like.** The full-cycle owner: discovery, demo, negotiation, close. A good AE runs disciplined discovery that surfaces *quantified* pain and the metrics/decision process behind it, demos to that pain rather than to the feature list, and negotiates by trading rather than conceding. Their calls compound — each one advances a defined next step. This is the richest role; scope the session to **one** stage.

**Default frameworks to teach.** MEDDIC/MEDDPICC (Enterprise Deal Map) as the qualification backbone; SPIN and Sandler Pain Funnel for discovery; SPICED for recurring-revenue fit; GPCT/CHAMP/ANUM for lighter qual; BEBEDC through evaluation; negotiation hygiene ("Trade, Never Concede") for the close. **Pick the framework to match the stage you're training**, not all at once.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Anchor on a real deal gap | **SAY:** "Our win rate at [stage] is X — the calls that convert do one thing differently." **ACTIVITY:** show `competency_heatmap` weakest stage skill. | `competency_heatmap` |
| 8-24 min | Psychology | Pain, loss aversion, status quo bias | **EXPLAIN:** buyers move to escape quantified pain, not to gain features; the real competitor is "do nothing". **ASK:** "What's the cost of them *not* changing?" | `concept-library.md` |
| 24-42 min | Framework | The stage framework, step by step | **EXPLAIN (discovery example):** SPIN Situation→Problem→Implication→Need-payoff, then MEDDIC Metrics/Economic buyer/Decision criteria. **SAY:** model an implication question that quantifies pain. | Framework Reference Card, `get_framework` |
| 42-60 min | Live examples | Won vs lost on the same deal shape | **ACTIVITY:** `get_call` on a won and a lost deal at this stage; excerpt the exact moment they diverged; discuss why. | `get_call` (won + lost) |
| 60-80 min | Practice / role-play | Live discovery/negotiation reps | **ACTIVITY:** Live Call Fishbowl or Structured Role-Play on a real account; observers score to the framework; The Isolation Drill for negotiation objections. | `exercises.md` |
| 80-90 min | Assessment & actions | Score to MEDDIC, commit next steps | **ACTIVITY:** score the fishbowl against the rubric. **ASK:** the one MEDDIC element each AE will confirm on their next live call. | Discovery/Negotiation Scorecard |

**Ground it.** `competency_heatmap` + `get_framework` (read the 1-4 anchors for the target stage) + `top_objections` + `get_call` on a matched **won and lost** deal + `coaching_plans` for personalised practice. This "good vs bad contrast" is the single most powerful move the platform enables.

**Recommended exercise(s).** *Live Call Fishbowl* (real transcript, high realism) and *The Isolation Drill* (surfacing the real blocker before answering) — or *Bounce It Back* for reversing technique in negotiation.

**Assessment.** Discovery or Negotiation Observer Scorecard tied to the exact MEDDIC/SPIN behaviours; 4-level rubric per competency from `get_framework` so training scores line up with live scores.

**Watch-outs.** (1) Feature-dumping in the demo instead of demoing to the quantified pain discovery surfaced. (2) Conceding to close — dropping price or terms to "get it over the line" rather than trading for something in return, which trains buyers to squeeze.

---

### Business Development Manager (BDM)

**Who they are / what a good call looks like.** Mid-market and enterprise deal developer. The differentiator from an AE is **multi-threading** and **map-building**: a good BDM never relies on a single champion, maps the buying committee and the competitive field, and orchestrates several stakeholders toward a shared decision. Their best calls end with a named next stakeholder and a confirmed path through the evaluation.

**Default frameworks to teach.** MEDDIC (Enterprise Deal Map) and BEBEDC (Evaluation & Competition Map) for stakeholder/competitive mapping; SPIN for question-led discovery; CHAMP for challenge-first qual; negotiation hygiene through evaluation to close.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Single-threaded deals slip | **SAY:** "How many of our slipped deals had exactly one contact?" **ACTIVITY:** `competency_heatmap` on stakeholder-mapping skill. | `competency_heatmap` |
| 8-24 min | Psychology | Consensus buying, champion risk, competitive framing | **EXPLAIN:** enterprise decisions are group decisions; a lone champion is a single point of failure. **ASK:** "Who else has to say yes — and who could quietly say no?" | `concept-library.md` |
| 24-42 min | Framework | Map the committee & the competition | **EXPLAIN:** MEDDIC (Economic buyer, Champion, Decision process) + BEBEDC (Budget, Evaluation, Competition). **ACTIVITY:** whiteboard a real account's map together. | Framework Reference Card, `get_framework` |
| 42-58 min | Live examples | A multi-threaded win dissected | **ACTIVITY:** `get_call` on a well-threaded deal vs a single-threaded slip; identify where the extra stakeholder was (or wasn't) brought in. | `get_call` excerpts |
| 58-80 min | Practice / role-play | Build maps under pressure | **ACTIVITY:** Mapping Mayhem — teams race to map a real account's committee and competition from call clues; then role-play the "who else should I be talking to?" ask. | `exercises.md` |
| 80-90 min | Assessment & actions | Score the map, commit a thread | **ACTIVITY:** score the map for completeness. **ASK:** the one new stakeholder each BDM will reach into this week. | Deal-Map Scorecard |

**Ground it.** `competency_heatmap` (stakeholder mapping) + `get_call` on multi-threaded deals + `top_objections` (evaluation/competition stalls) + `coaching_plans`.

**Recommended exercise(s).** *Mapping Mayhem* (stakeholder mapping, played competitively) and *Structured Objection Handling Role-Play* on competitive objections.

**Assessment.** Deal-Map / MEDDIC Observer Scorecard scoring committee coverage and next-thread discipline; 4-level rubric on "Multi-threading / Stakeholder Mapping".

**Watch-outs.** (1) Happy-ears single-threading — mistaking one enthusiastic contact for a mandate. (2) Ignoring the competition — no BEBEDC read on who else is in the evaluation, so the deal is lost on criteria the BDM never shaped.

---

### Sales Engineer

**Who they are / what a good call looks like.** The technical partner on discovery and demo. A good SE runs *technical* discovery — current stack, constraints, integration realities — then demos so that every feature is tied back to a quantified business pain, and handles technical-evaluator objections without either over-promising or disappearing down a rabbit hole. Their credibility is the deal's technical de-risking.

**Default frameworks to teach.** MEDDIC (especially Decision Criteria and the technical Champion) and SPIN for question-led technical discovery. The SE's superpower is asking the Implication question a rep can't.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Demos that dazzle but don't close | **SAY:** "A technically perfect demo still loses if it's not tied to their pain." **ACTIVITY:** `qa_heatmap` / `competency_heatmap` on demo effectiveness. | `qa_heatmap`, `competency_heatmap` |
| 8-24 min | Psychology | Cognitive load, credibility, the curse of knowledge | **EXPLAIN:** experts over-explain; the technical buyer fears risk more than they crave features. Tie every feature to a "so that you can…". **ASK:** "Where do we lose them to detail?" | `concept-library.md` |
| 24-42 min | Framework | SPIN for technical discovery, demo-to-pain | **EXPLAIN:** Situation (stack) → Problem (constraint) → Implication (cost of it) → Need-payoff; then demo *only* the two features that answer their top pain. **SAY:** model a demo line that references their own metric. | Framework Reference Card, `get_framework` |
| 42-58 min | Live examples | A tied-to-pain demo vs a feature tour | **ACTIVITY:** `get_call` on a strong technical demo vs a feature-dump; contrast the framing of the same feature. | `get_call` excerpts |
| 58-80 min | Practice / role-play | Handle the technical evaluator | **ACTIVITY:** Structured Role-Play on the team's real technical objections (from `top_objections`); The Isolation Drill to separate a real blocker from a curiosity question. | `exercises.md` |
| 80-90 min | Assessment & actions | Score demo-to-pain, commit | **ACTIVITY:** score a 5-min mock demo segment. **ASK:** one feature each SE will stop leading with. | Demo Observer Scorecard |

**Ground it.** `get_framework` (Decision Criteria anchors) + `get_call` on technical demos (strong vs feature-dump) + `top_objections` filtered to technical stalls + `qa_heatmap` on demo quality.

**Recommended exercise(s).** *The Isolation Drill* (blocker vs curiosity) and *Structured Objection Handling Role-Play* on technical evaluator objections.

**Assessment.** Demo Observer Scorecard scoring feature-to-pain linkage and honest scoping; 4-level rubric on "Technical Discovery / Demo".

**Watch-outs.** (1) The feature tour — demoing everything the product does instead of the two things that answer their pain. (2) Over-promising on the roadmap under pressure, creating a delivery and legal exposure later.

---

### Sales Manager

**Who they are / what a good call looks like.** Not a seller in this session — a **coach**. This role's "training" is largely *coaching-the-coach*: teaching managers to score evidence-based on the 1-4 scale, run calibration so scores mean the same thing across the team, and turn deal reviews into forward-looking coaching rather than status interrogation. A good manager's 1:1 changes one behaviour, cites a transcript, and ends with a rep-owned action.

**Default frameworks to teach.** MEDDIC as the shared deal language, negotiation hygiene as the standard to coach against, and — the real content — **coaching & calibration discipline**: scoring to anchors, giving evidence-based feedback, and calibrating against peers so the team's scores are trustworthy.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Inconsistent scoring erodes trust | **SAY:** "If two of us score the same call differently, our coaching is opinion, not evidence." **ACTIVITY:** show `accuracy_trend` and score spread across managers. | `accuracy_trend`, `competency_heatmap` |
| 8-22 min | Psychology | Feedback that lands; recency & halo bias | **EXPLAIN:** evidence beats opinion; reps defend against judgement, engage with observation. Beware halo (one great call ≠ a great rep) and recency bias. **ASK:** "When did feedback last change *your* behaviour — why?" | `concept-library.md` |
| 22-40 min | Framework | Score to anchors + the calibration loop | **EXPLAIN:** read the 1-4 anchors in `get_framework`; score independently → compare → discuss the gap → agree the anchor. **ACTIVITY:** all managers score the *same* call blind, then reveal. | `get_framework`, calibration sheet |
| 40-58 min | Live examples | Calibrate on a real team call | **ACTIVITY:** `get_call` on a genuinely borderline call; managers place it at L2 vs L3 and defend with transcript evidence; converge. | `get_call`, `get_competency_scores` |
| 58-78 min | Practice / role-play | Run a coaching 1:1, observed | **ACTIVITY:** role-play a deal-review-turned-coaching using a real `coaching_plans` output; peers score the *manager's* coaching, not the rep. | `exercises.md`, `coaching_plans` |
| 78-90 min | Assessment & actions | Lock calibration, commit | **ACTIVITY:** measure score variance before/after. **ASK:** each manager commits one behaviour to coach team-wide this fortnight. | Calibration Scorecard |

**Ground it.** `competency_heatmap` + `get_competency_scores` (per-rep evidence) + `accuracy_trend` (calibration drift) + `rep_league_table` / `most_improved_rep` (case studies) + `coaching_plans` (real 1:1 material). Consider `create_calibration_session` / `record_calibration_score` to run a live calibration and `get_calibration_results` to show convergence.

**Recommended exercise(s).** *System 1 vs System 2 Demonstration* (why snap scoring is biased) and a blind-scoring calibration round on a real `get_call` (adapt *Live Call Fishbowl* to score the call, not perform it).

**Assessment.** Calibration Scorecard measuring inter-manager score variance + a coaching-quality rubric (evidence cited, one behaviour, rep-owned action) on the same 1-4 scale.

**Watch-outs.** (1) Opinion-based coaching — "you need more urgency" with no transcript evidence, which reps rightly discount. (2) Score inflation / drift — managers scoring their own reps generously, so `competency_heatmap` stops meaning anything until calibrated.

---

## Customer Success Roles

### Customer Success Manager (CSM)

**Who they are / what a good call looks like.** The owner of adoption, health, value realisation, and expansion across the lifecycle — onboarding, check-ins, QBRs, renewals, upsells, feedback. A good CSM call ties usage to *outcomes* the customer cares about, surfaces risk early, and always advances the success plan. They lead with the customer's goals, not the product's features. This is a broad role; scope the session to **one** call type.

**Default frameworks to teach.** SPICED (Recurring Revenue Fit Check) as the lifecycle backbone; Success Plan & Time-to-Value for onboarding; Business Review Structure for QBRs; Renewal & Retention for renewals; Voice of Customer for feedback; LAER for handling concerns and churn signals in-call. **Match the framework to the call type in focus.**

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Health & retention are made on calls | **SAY:** "Churn is rarely a surprise — it's a set of calls where we talked features, not outcomes." **ACTIVITY:** show `qa_heatmap` / health trend. | `qa_heatmap`, `competency_heatmap` |
| 8-24 min | Psychology | Value realisation, loss aversion, the peak-end rule | **EXPLAIN:** customers renew on *perceived* value and how the relationship *feels*; outcomes remembered beat features shown. **ASK:** "What outcome does this customer actually care about?" | `concept-library.md` |
| 24-42 min | Framework | The call-type framework, step by step | **EXPLAIN (QBR example):** Business Review Structure — recap goals → show outcomes (not just usage) → surface risks → realign the plan. **SAY:** model an outcome statement in the customer's own metric. | Framework Reference Card, `get_framework` |
| 42-58 min | Live examples | A value-led call vs a dashboard-read | **ACTIVITY:** `get_call` on a strong QBR/renewal vs a usage-dump; contrast how renewal felt after each. | `get_call` excerpts |
| 58-80 min | Practice / role-play | Run the call for real, played for stakes | **ACTIVITY:** Win the Room — a deliberately terrible QBR then a proper one, audience scores "would I renew"; then a real-account role-play. | `exercises.md` |
| 80-90 min | Assessment & actions | Score to the framework, commit | **ACTIVITY:** score the role-play. **ASK:** one at-risk account each CSM will re-anchor on outcomes this week. | Business Review / Renewal Scorecard |

**Ground it.** `competency_heatmap` + `get_call` on QBRs and renewals (strong vs weak) + `qa_heatmap` (call quality) + `coaching_plans`. Use `top_objections` if training renewal negotiation, and any `get_report` / insight snapshot for the customer-health narrative.

**Recommended exercise(s).** *Win the Room* (Business Review Structure, comedy-then-serious) and *Red, Amber, Green Freeze* (customer health scoring).

**Assessment.** Business Review or Renewal Observer Scorecard tied to the chosen framework; 4-level rubric on "Value Realisation / Business Review".

**Watch-outs.** (1) Dashboard theatre — reading usage graphs instead of translating them into the customer's outcomes. (2) No risk surfacing — a "green" QBR that misses a quiet churn signal because the CSM never asked the uncomfortable question.

---

### Onboarding Specialist

**Who they are / what a good call looks like.** They own the first mile: time-to-value, the success plan, and the first real "win" for a new customer. A good onboarding call sets a concrete success plan with dates and owners, drives to a first value moment fast, and pre-empts the activation blockers that stall adoption. Momentum in week one predicts renewal in month twelve.

**Default frameworks to teach.** Success Plan & Time-to-Value Model (the spine) and Voice of Customer (capturing early expectations and closing the loop). The whole session is about *speed to first value* and a plan the customer co-owns.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | First value = future renewal | **SAY:** "The clock the customer is watching starts the day they sign — how fast do we get them a win?" **ACTIVITY:** show time-to-value / activation stats from `call_stats`. | `call_stats`, `competency_heatmap` |
| 8-22 min | Psychology | Momentum, the endowment effect, early habit | **EXPLAIN:** early wins build ownership; a stalled first month breeds regret and churn. **ASK:** "What's the smallest real win we can give them this week?" | `concept-library.md` |
| 22-40 min | Framework | Build a success plan, drive to first value | **EXPLAIN:** define the customer's goal → milestones with dates/owners → the fastest path to first value → confirm expectations (VoC). **ACTIVITY:** draft a real success plan together. | Framework Reference Card, `get_framework` |
| 40-56 min | Live examples | A fast-value onboarding vs a drift | **ACTIVITY:** `get_call` on an onboarding that hit first value quickly vs one that drifted; find the divergence. | `get_call` excerpts |
| 56-78 min | Practice / role-play | Set the plan, handle a blocker | **ACTIVITY:** role-play the kick-off + a real activation blocker (from `top_objections` / notes); Bounce It Back to keep momentum. | `exercises.md` |
| 78-90 min | Assessment & actions | Score the plan, commit | **ACTIVITY:** score the success plan for dates/owners/first-value. **ASK:** one new account each specialist will get to first value this week. | Onboarding / Success-Plan Scorecard |

**Ground it.** `get_call` on onboarding calls + `qa_heatmap` (onboarding quality) + `call_stats` (time-to-value) + `top_objections` on activation blockers.

**Recommended exercise(s).** *Bounce It Back* (keep momentum past a blocker) and a success-plan-building drill (adapt *The Status Quo Audit* to map the cost of *slow* activation).

**Assessment.** Onboarding / Success-Plan Observer Scorecard scoring plan quality and first-value speed; 4-level rubric on "Onboarding / Time-to-Value".

**Watch-outs.** (1) Feature training instead of value delivery — teaching every button before the customer has had a single win. (2) A success plan with no dates or owners — a wish list that quietly stalls.

---

### Renewals Manager

**Who they are / what a good call looks like.** They protect and grow the recurring base. A good renewal call pre-empts churn signals well before the renewal date, reaffirms ROI in the customer's own numbers, and negotiates the renewal on a *trade-never-concede* basis — protecting price and terms by trading, not caving under a discount ask. Renewals are won in the quarters *before* the renewal call.

**Default frameworks to teach.** Renewal & Retention Model (churn pre-emption + ROI reaffirmation), SPICED to re-confirm fit and impact, Business Review Structure to set up the renewal on value. Negotiation discipline is the muscle: trade, never concede.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Late saves are expensive saves | **SAY:** "By the time they ask for a discount, we've already lost the ROI argument." **ACTIVITY:** show `disposition_trend` on renewal outcomes. | `disposition_trend`, `competency_heatmap` |
| 8-24 min | Psychology | Loss aversion, anchoring, reciprocity in negotiation | **EXPLAIN:** customers discount value they already receive; re-anchor on the cost of *losing* it. Every concession must buy something back. **ASK:** "What would they lose if they walked?" | `concept-library.md` |
| 24-42 min | Framework | Reaffirm ROI, then trade | **EXPLAIN:** Renewal & Retention (health check → ROI recap → risk → ask) + negotiation hygiene: never concede price without a trade (term, scope, reference). **SAY:** model a trade ("I can hold price — if we move to a 24-month term"). | Framework Reference Card, `get_framework` |
| 42-58 min | Live examples | A pre-empted renewal vs a scramble | **ACTIVITY:** `get_call` on a clean renewal vs a discount scramble; find where ROI was (or wasn't) established. | `get_call` excerpts |
| 58-80 min | Practice / role-play | Hold the line on price | **ACTIVITY:** The Isolation Drill on "it's too expensive" + Bounce It Back trades; role-play a real renewal with a discount push. | `exercises.md` |
| 80-90 min | Assessment & actions | Score the trade, commit | **ACTIVITY:** score the negotiation for trades vs concessions. **ASK:** one at-risk renewal each manager will ROI-anchor early. | Renewal Negotiation Scorecard |

**Ground it.** `top_objections` (renewal/pricing objections) + `get_call` on renewal calls + `disposition_trend` (renewal outcomes) + `coaching_plans`.

**Recommended exercise(s).** *The Isolation Drill* (surface the real reason behind "too expensive") and *Bounce It Back* (reversing/trading technique).

**Assessment.** Renewal Negotiation Observer Scorecard scoring trade-not-concede + ROI reaffirmation; 4-level rubric on "Renewal & Retention / Negotiation".

**Watch-outs.** (1) Discount reflex — dropping price at the first push instead of trading, training the whole base to negotiate hard. (2) Renewing on autopilot — no ROI reaffirmation, so the renewal rests on inertia that a competitor can break.

---

### Account Manager

**Who they are / what a good call looks like.** The relationship and growth owner across QBRs, renewals, upsells, and check-ins. Where the CSM leans on health and adoption and the Renewals Manager on the renewal event, the AM's edge is **relationship depth and expansion timing** — reading when an account is ready to grow and setting up the expansion conversation without souring the relationship. A good AM call strengthens trust *and* plants a growth seed.

**Default frameworks to teach.** Business Review Structure (the growth-setup engine), SPICED for fit and impact, Renewal & Retention to protect the base, Success Plan for continuity. Expansion is timed off value delivered, never forced.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Expansion is earned, not pushed | **SAY:** "Our biggest accounts grew because we timed the ask right — not because we asked more." **ACTIVITY:** show `rep_league_table` / expansion trend. | `rep_league_table`, `competency_heatmap` |
| 8-24 min | Psychology | Trust, reciprocity, readiness signals | **EXPLAIN:** expansion lands when value is already felt; premature asks read as extractive. Read signals: new goals, new teams, usage ceilings. **ASK:** "What tells you this account is *ready* to grow?" | `concept-library.md` |
| 24-42 min | Framework | Business review → growth setup | **EXPLAIN:** run the Business Review Structure, then bridge from a delivered outcome to a new goal the next tier serves. **SAY:** model an expansion bridge tied to their own result. | Framework Reference Card, `get_framework` |
| 42-58 min | Live examples | A well-timed upsell vs a pushed one | **ACTIVITY:** `get_call` on a natural expansion vs a forced ask; contrast how the relationship felt after. | `get_call` excerpts |
| 58-80 min | Practice / role-play | Read the signal, make the bridge | **ACTIVITY:** Red, Amber, Green Freeze on account readiness; Win the Room on the QBR that sets up growth; role-play the bridge. | `exercises.md` |
| 80-90 min | Assessment & actions | Score the setup, commit | **ACTIVITY:** score the growth bridge for timing and relationship. **ASK:** one account each AM will read for readiness this week. | QBR / Expansion Scorecard |

**Ground it.** `get_call` on QBRs and upsell calls + `top_objections` (expansion objections) + `competency_heatmap` + `rep_league_table` for the hook.

**Recommended exercise(s).** *Win the Room* (Business Review Structure) and *Red, Amber, Green Freeze* (readiness/health scoring).

**Assessment.** QBR / Expansion Observer Scorecard scoring value-first setup and timing; 4-level rubric on "Business Review / Expansion".

**Watch-outs.** (1) Pushing expansion before value is felt, which reads as extractive and damages trust. (2) Pure relationship management with no growth motion — a delightful account that never expands.

---

## Support & Complaints Roles

> Support and complaints sessions should feel **calm, structured, and psychologically safe** — the opposite of the fast, competitive sales floor. Practice here is about de-escalation and control under pressure, not tempo. Ground these roles in **QA** data (`qa_heatmap`, `qa_critical_errors`, `qa_action_plans`) rather than sales objections.

### Customer Support Agent

**Who they are / what a good call looks like.** The front line of service. A good support call resolves the issue at first contact where possible, de-escalates emotion before solving, and leaves the customer feeling heard even when the answer is "no". Speed matters, but *felt* resolution matters more — a fixed issue with a cold manner still damages the relationship.

**Default frameworks to teach.** LAER (Listen, Acknowledge, Explore, Respond) as the core service-recovery loop; Support Resolution Quality (First-Contact Resolution Model) for call quality; the 5-step Complaints ladder for when a query tips into a complaint; Voice of Customer to close the loop.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | FCR and tone drive loyalty | **SAY:** "A customer forgives a problem — they remember how we made them feel solving it." **ACTIVITY:** show `qa_heatmap` on resolution + empathy scores. | `qa_heatmap`, `qa_action_plans` |
| 8-22 min | Psychology | Emotion before logic; service recovery paradox | **EXPLAIN:** an upset customer can't hear a solution until they feel heard; recover well and loyalty can *exceed* pre-problem levels. **ASK:** "What do you feel when you're kept on hold, unheard?" | `concept-library.md` |
| 22-40 min | Framework | LAER + first-contact resolution | **EXPLAIN:** Listen (don't interrupt) → Acknowledge (name the feeling) → Explore (diagnose) → Respond (solve + confirm). **SAY:** model an acknowledgement line before any troubleshooting. | Framework Reference Card, QA framework |
| 40-56 min | Live examples | A recovered call vs an escalated one | **ACTIVITY:** `get_call` on a support call that de-escalated vs one that flared; find where acknowledgement was (or wasn't) given. | `get_call` excerpts |
| 56-78 min | Practice / role-play | De-escalate, then resolve | **ACTIVITY:** Active Listening Quiz + Losing the Fillers; then a calm role-play of an upset customer, coaching to LAER order (feel first, fix second). | `exercises.md` |
| 78-90 min | Assessment & actions | Score to QA, commit | **ACTIVITY:** score the role-play against the QA scorecard (empathy + resolution). **ASK:** one acknowledgement habit each agent will lead with. | Support QA Scorecard |

**Ground it.** `qa_heatmap` + `qa_critical_errors` (non-negotiables like missed empathy/disclosure) + `qa_action_plans` (the week's close) + `get_call` on support calls (recovered vs flared).

**Recommended exercise(s).** *Active Listening Quiz (Logical Listening)* and *Losing the Fillers* (calm, controlled delivery). Both suit the lower-tempo support room.

**Assessment.** Support QA Observer Scorecard tied to LAER + First-Contact Resolution behaviours (use the client's QA framework via `get_qa_framework`); 4-level rubric on "Resolution / Empathy".

**Watch-outs.** (1) Solving before soothing — troubleshooting while the customer is still venting, which reads as dismissive. (2) Cold first-contact resolution — technically resolved, relationally damaged.

---

### Technical Support Specialist

**Who they are / what a good call looks like.** Handles the harder, technical tickets and the escalations. A good call runs a **structured diagnosis** (reproduce → isolate → confirm) rather than guessing, keeps a frustrated technical customer informed through the uncertainty, and — when it must escalate — does a **clean warm handover** with full context so the customer never has to repeat themselves. Rigour and calm communication are the whole job.

**Default frameworks to teach.** Support Resolution Quality (First-Contact Resolution Model) for diagnostic structure; LAER to keep the human calm through a technical fix; the 5-step Complaints ladder for when frustration tips over. The differentiator vs a general agent is *diagnostic discipline* and *clean escalation*.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | Repeat contacts and messy handovers cost trust | **SAY:** "Every time a customer has to re-explain, we lose a little more of them." **ACTIVITY:** show `qa_heatmap` on diagnosis + handover quality. | `qa_heatmap`, `qa_action_plans` |
| 8-22 min | Psychology | Uncertainty tolerance, curse of knowledge, calm under fire | **EXPLAIN:** a technical customer's stress is uncertainty, not the bug; narrate the diagnosis so they feel progress. Avoid jargon that widens the gap. **ASK:** "What makes waiting on a fix bearable?" | `concept-library.md` |
| 22-40 min | Framework | Structured diagnosis + clean escalation | **EXPLAIN:** reproduce → isolate → confirm; if escalating, warm handover with full context (steps tried, evidence, customer state). **SAY:** model a handover summary the next tier can act on. | Framework Reference Card, QA framework |
| 40-56 min | Live examples | A clean diagnosis vs a guess-and-check | **ACTIVITY:** `get_call` on a structured diagnosis vs a scattergun one; and a clean vs cold escalation. | `get_call` excerpts |
| 56-78 min | Practice / role-play | Diagnose aloud, then hand over | **ACTIVITY:** Kipling's Six Servants to structure the diagnostic questions; role-play a technical issue ending in a warm handover, scored on completeness. | `exercises.md` |
| 78-90 min | Assessment & actions | Score diagnosis + handover, commit | **ACTIVITY:** score the handover for context completeness. **ASK:** one diagnostic step each specialist will stop skipping. | Technical Support QA Scorecard |

**Ground it.** `qa_heatmap` + `qa_critical_errors` + `get_call` on escalations (clean vs cold handover) + `qa_action_plans`.

**Recommended exercise(s).** *Kipling's Six Servants* (systematic diagnostic questioning) and *Losing the Fillers* (calm, precise technical communication).

**Assessment.** Technical Support QA Observer Scorecard scoring diagnostic structure and warm-handover completeness; 4-level rubric on "Diagnosis / Escalation".

**Watch-outs.** (1) Guess-and-check troubleshooting instead of reproduce-isolate-confirm, which frustrates and prolongs. (2) Cold escalation — throwing the ticket over the wall with no context, forcing the customer to start again.

---

### Complaints Handler

**Who they are / what a good call looks like.** The specialist for the hardest conversations. A good complaint call runs the full ladder — **acknowledge → empathise → investigate → resolve → follow-up** — never blames the customer or a colleague, takes ownership on behalf of the business, and *confirms satisfaction* at the end rather than assuming it. The measure isn't just resolution; it's a customer who feels the business took them seriously.

**Default frameworks to teach.** 5-step Complaints Handling (Complaint Resolution Ladder) as the non-negotiable spine; LAER underneath it for the emotional recovery. This session is the calmest and most deliberate of all fourteen — pace and psychological safety are part of the content.

| Timing | Segment | Purpose | Process (SAY/EXPLAIN/ASK/ACTIVITY) | Resources |
|--------|---------|---------|-------------------------------------|-----------|
| 0-8 min | Why we're here | A complaint is a chance to keep a customer | **SAY:** "A well-handled complaint can leave a customer *more* loyal than before — this is retention, not damage control." **ACTIVITY:** show `qa_critical_errors` (e.g. blame, no follow-up). | `qa_critical_errors`, `qa_heatmap` |
| 8-24 min | Psychology | Service recovery paradox; blame, ownership, fairness | **EXPLAIN:** customers judge fairness of *process* as much as outcome; blame (of them or colleagues) destroys it; ownership rebuilds it. **ASK:** "When a complaint of yours was handled well — what did they do?" | `concept-library.md` |
| 24-42 min | Framework | The five-step ladder, step by step | **EXPLAIN:** Acknowledge → Empathise → Investigate → Resolve → Follow-up; never blame, always confirm satisfaction. **SAY:** model an ownership line ("that's on us, and here's what I'll do"). | Framework Reference Card, QA framework |
| 42-58 min | Live examples | A ladder followed vs a defensive call | **ACTIVITY:** `get_call` on a complaint handled to the ladder vs a defensive/blaming one; mark where each step landed or was missed. | `get_call` excerpts |
| 58-80 min | Practice / role-play | Hold the ladder under emotion | **ACTIVITY:** calm, supportive role-play of an angry complaint; coach to the ladder order and no-blame rule; The Pause Challenge to resist defensiveness. Debrief gently. | `exercises.md` |
| 80-90 min | Assessment & actions | Score the ladder, commit | **ACTIVITY:** score against the ladder (all five steps, no blame, satisfaction confirmed). **ASK:** one step each handler will stop skipping (usually follow-up). | Complaints QA Scorecard |

**Ground it.** `qa_critical_errors` (blame, missed follow-up, no satisfaction check) + `qa_heatmap` + `get_call` on complaint calls (ladder-followed vs defensive) + `qa_action_plans`.

**Recommended exercise(s).** *The Pause Challenge* (resist the defensive reflex, hold the ladder) and *Active Listening Quiz* (hearing the real grievance). Keep the tone supportive, not competitive.

**Assessment.** Complaints QA Observer Scorecard scoring all five ladder steps, the no-blame rule, and confirmed satisfaction (map to the client's QA framework via `get_qa_framework`); 4-level rubric on "Complaint Resolution".

**Watch-outs.** (1) Defensiveness or blame-shifting — justifying, or pointing at another team, which destroys the sense of fairness. (2) Skipping follow-up — resolving in the moment but never closing the loop, so the customer is left wondering if anyone really cared.

---

## Cross-cutting reminders

- **One session, one focus.** For the broad roles (AE, CSM), scope to a single stage or call type — a 90-minute session cannot teach all of MEDDIC, SPIN, SPICED and negotiation at once.
- **Always ground first.** No blueprint above is finished until the **Ground it** pulls are run and the real objections, calls, and 1-4 scores are dropped in (`references/mcp-data-sourcing.md`).
- **Assess on the platform's scale.** Every scorecard and rubric uses the compounding 1-4 scale (L1 Developing → L4 Role Model) and, wherever possible, the client's own `get_framework` / `get_qa_framework` competencies, so a rep's training score and their live score speak the same language.
- **Anonymise before publishing.** Real transcript lines and named reps are fine in the room; strip customer/prospect names and personal data before anything goes into a downloadable handout or shared deck.
- **Adapt for delivery and culture.** Apply the online-engagement and US/UK cultural adjustments from `SKILL.md` before you run.
