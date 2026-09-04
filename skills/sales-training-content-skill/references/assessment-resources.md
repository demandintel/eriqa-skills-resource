# Assessment Resources

Quizzes, 4-level competency rubrics, role-play observer scorecards, pre/post assessment design, and certification checklists for Eriqa training.

Everything here is built to **mirror the platform's own scoring** so a trainer's assessment lines up with the live competency scores the platform reports. All of it is designed to be printed and used in the room.

---

## Why Assessment Mirrors the Platform

Eriqa scores reps on an **even, compounding 1-4 competency scale**, backed by transcript evidence (the platform quotes the exact words that earned or lost a level). Training assessment uses the **same scale and, wherever possible, the same competencies**. That gives you three things textbook assessment can't:

1. **Directly comparable scores.** A rep's training score and their live platform score speak the same language. "You scored L2 on Objection Handling in the role-play, and the platform has you at L2 on live calls" is a coaching conversation. Two unrelated numbers are not.
2. **Evidence, not opinion.** Every level is earned against **observable behaviour in a transcript**, not a trainer's gut feel. If you can't quote the line, the level wasn't demonstrated. This is exactly how the platform scores, and it keeps calibration tight across trainers.
3. **A clean read on movement.** Because the scale is the same before and after, you can show progress as a level change on the same competency, and reconcile it against the platform's trend.

### The scale (adopt this shorthand everywhere)

| Level | Shorthand | Maps to platform |
|-------|-----------|------------------|
| **L1** | Developing | 1 |
| **L2** | Consistent | 2 |
| **L3** | Proficient | 3 |
| **L4** | Role Model | 4 |
| — | **Insufficient Evidence** | (pre-score state) |

**"Insufficient Evidence" is a legitimate result, not a failure.** Before enough calls (or role-play reps) exist to judge a competency fairly, the honest score is *Insufficient Evidence*, exactly as the platform withholds a score until it has enough transcript to stand behind. Record it as such rather than guessing a 1. It tells you to go and observe more, not to remediate.

**Why an even number of levels?** Four levels, no middle. A three- or five-point scale lets an assessor park everyone at "3 — about average" and avoid a judgement. An even scale forces a call: is this behaviour below the line (L1-L2) or above it (L3-L4)? That single decision is where the coaching value sits.

---

## The 4-Level Competency Rubric (Reusable Template)

Every rubric in this skill follows one shape: **Competency → Skills → a 4-level compounding descriptor per skill**, scored against transcript-observable behaviour.

### The compounding rule

Each level **includes everything below it**. L3 is not "different from L2" — it is "everything at L2, plus more". A rep cannot skip. If they show a flash of L4 brilliance but drop a required L2 behaviour, they score **L2**: the level is the *highest floor they consistently stand on*, not the highest ceiling they once touched. This is the single most important rule to hold, and it is exactly how the platform scores.

### Generic rubric template

| Level | What it means | Evidence you'd expect in a transcript |
|-------|---------------|----------------------------------------|
| **Insufficient Evidence** | Not enough observed behaviour to judge fairly. | Fewer than the agreed minimum of calls/reps, or the situation to demonstrate the skill never arose. |
| **L1 — Developing** | Aware of the behaviour; attempts it, but inconsistently or mechanically. | Attempts the step but skips parts, mistimes it, or reverts under pressure. E.g. acknowledges an objection then immediately pitches. |
| **L2 — Consistent** | Does the core behaviour reliably in routine situations. | The full core step is present on most calls. E.g. pauses, acknowledges, and asks one diagnostic question before answering. |
| **L3 — Proficient** | Everything at L2, plus adapts to the specific buyer and situation. | Tailors wording and depth to *this* buyer; recovers when a call goes off-script; links the step to the buyer's own stated goal. |
| **L4 — Role Model** | Everything at L3, plus sets the standard others learn from. | Handles the hard, ambiguous, multi-threaded case cleanly; the transcript could be used to train others; teaches or models in the moment. |

### How to score a role-play or a real call against it

1. **Listen/read for the behaviour, quote the evidence.** For each skill, capture the exact line(s) that demonstrate it. No quote → treat as not demonstrated for that level.
2. **Find the floor, not the ceiling.** Start at L1 and climb only while every required behaviour at each level is present. Stop at the first level where a required behaviour is missing. That's the score.
3. **One flash doesn't promote; one gap demotes.** Consistency is the currency. A single brilliant reframe doesn't make an L2 rep an L4. A single skipped isolation drops an otherwise strong call.
4. **Not enough to judge? Score Insufficient Evidence.** Don't invent a number. Note what you'd need to see.
5. **Score per skill, then the competency.** The competency level is typically the **lowest** of its skills (compounding applies upward), unless your framework weights them.

### Assess to the REAL anchors, not these generic ones

The template above is a fallback. When you are assessing a specific client or rep, **pull the exact competencies and 1-4 level anchors the platform scores them against, and assess to those** — so your wording is identical to theirs.

```
1. get_framework(...)   → returns the client's competencies, their skills, and the
                          exact L1-L4 anchor wording the platform uses. Assess to THIS.
2. list_frameworks / list_qa_frameworks
                        → confirm you're using the right framework for the role/call type
                          (and the QA framework behind support/complaints scoring).
3. Copy the anchor wording verbatim into your scorecard.
                          Do not paraphrase — identical wording = comparable scores.
```

If `get_framework` returns a customised rubric, **it wins over the generic examples below.** Teach and assess to the levels it defines.

---

## Worked Rubric Examples

Three fully written rubrics, one from each group. Use them as-is where they match, or as a model for building your own from `get_framework`. Framework aliases follow `references/framework-library.md`.

### A. Objection Handling — Sales (LEARN + Root-Cause Diagnostic)

**Competency:** Handles objections by diagnosing the root cause before responding, not by rebutting.
**Frameworks:** LEARN (Listen, Empathise, Ask, Reframe, Next step); Root-Cause Diagnostic (Bias / Confusion / Uncertainty).

**Skill 1 — Listen & Acknowledge before responding**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Talks over or rebuts within ~1 second. May acknowledge, but as a filler ("Sure, but…") before pitching. |
| **L2 Consistent** | Pauses (1.5-2s), lets the buyer finish, and offers a genuine acknowledgement ("I completely understand why that'd be a concern") before doing anything else. |
| **L3 Proficient** | Everything at L2, and the acknowledgement is specific to what *this* buyer said, not a generic line. Visibly lowers the buyer's defensiveness (buyer keeps talking, softens tone). |
| **L4 Role Model** | Everything at L3, and does it even under a hostile or rapid-fire objection where most reps get defensive. Could be used as a model clip. |

**Skill 2 — Diagnose the root cause (Ask before Answer)**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Answers the surface objection directly ("It's too expensive" → immediately justifies price). No diagnostic question. |
| **L2 Consistent** | Asks at least one diagnostic question before answering ("What makes you say that?" / "Help me understand what's behind that"). |
| **L3 Proficient** | Everything at L2, and the question is aimed at distinguishing Bias vs Confusion vs Uncertainty, then isolates ("And is that the only thing?"). Correctly names the real cause. |
| **L4 Role Model** | Everything at L3, and untangles a *stacked* objection (price masking risk masking authority), isolating and sequencing them cleanly. |

**Skill 3 — Reframe & advance**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Reframe is a feature dump; ends with no agreed next step, or "I'll send an email". |
| **L2 Consistent** | Reframe addresses the stated concern with relevant evidence/logic, and closes with a clear next step. |
| **L3 Proficient** | Everything at L2, and the reframe is held against the buyer's *own* stated future state/goal ("You said hitting Q3 matters most — here's how this affects that"). Next step is specific and mutually agreed. |
| **L4 Role Model** | Everything at L3, and turns the objection into forward momentum the buyer themselves articulates ("So if we solved that, you'd want to…"). Buyer commits to a concrete advance. |

### B. QBR / Value Review — Customer Success (Business Review Structure)

**Competency:** Runs a business review that reconnects activity to the customer's stated outcomes and drives renewal/expansion, rather than reporting usage.
**Frameworks:** Business Review Structure (recap goals → show outcomes → surface risks → realign plan); Value Realisation Tracking.

**Skill 1 — Recap goals & show outcomes in the customer's terms**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Opens with usage dashboards / feature adoption stats. No reference to the customer's original success criteria. |
| **L2 Consistent** | Recaps the goals agreed at the start/last review and reports progress against them. |
| **L3 Proficient** | Everything at L2, and frames outcomes in the customer's own business metrics (hours saved, revenue, risk reduced), not product usage. Ties each metric to a stated goal. |
| **L4 Role Model** | Everything at L3, and quantifies realised value against the original business case so the ROI is undeniable and renewal is pre-justified. |

**Skill 2 — Surface risks honestly**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Presents only good news. Risks/gaps unmentioned even when present. |
| **L2 Consistent** | Raises at least one risk or gap openly rather than hiding it. |
| **L3 Proficient** | Everything at L2, and reads qualitative risk signals (champion disengaging, "let's just keep it the same", energy shift) and names them constructively. |
| **L4 Role Model** | Everything at L3, and turns a surfaced risk into a jointly-owned action with a mitigation and owner, strengthening trust rather than denting it. |

**Skill 3 — Realign the plan & set up growth**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Ends with no updated plan or next milestone. |
| **L2 Consistent** | Updates the joint success plan with next milestones and owners on both sides. |
| **L3 Proficient** | Everything at L2, and links a genuine usage/outcome trigger to a relevant expansion conversation (not a calendar-driven upsell). |
| **L4 Role Model** | Everything at L3, and the customer co-authors the forward plan and raises the expansion themselves. Reads as strategic partnership. |

### C. Complaint De-escalation & Resolution — Support (LAER + 5-Step)

**Competency:** De-escalates an upset customer and drives to a resolved, confirmed outcome.
**Frameworks:** LAER (Listen, Acknowledge, Explore, Respond); 5-Step Complaints Handling (Complaint Resolution Ladder); Support Resolution Quality (First-Contact Resolution).

**Skill 1 — De-escalate (Listen & Acknowledge)**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Jumps to policy, defends the company, or interrupts. Emotion left unacknowledged. |
| **L2 Consistent** | Lets the customer vent without interrupting; acknowledges the impact and, where warranted, apologises for the experience. |
| **L3 Proficient** | Everything at L2, and labels the emotion ("It sounds like this has really cost you time") and matches a calm, downward-paced tone. Customer audibly de-escalates. |
| **L4 Role Model** | Everything at L3, and turns a furious, escalation-bound customer into a collaborative one — a clip you'd use to train the team. |

**Skill 2 — Explore & diagnose the real issue**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Assumes the problem and starts fixing the wrong thing. No clarifying questions. |
| **L2 Consistent** | Asks questions to establish what actually happened before proposing a fix. |
| **L3 Proficient** | Everything at L2, and separates the stated complaint from the underlying need (e.g. "wants a refund" actually = "wants to trust it won't recur"). |
| **L4 Role Model** | Everything at L3, and uncovers a systemic/root cause and flags it for prevention, not just this ticket. |

**Skill 3 — Resolve, confirm & close the loop**

| Level | Transcript-observable behaviour |
|-------|--------------------------------|
| **L1 Developing** | Vague outcome ("I'll look into it"); no ownership, timeline, or confirmation. Risk of a critical error (broken promise, no follow-up). |
| **L2 Consistent** | Proposes a concrete resolution with an owner and timeline, and confirms the customer is satisfied. |
| **L3 Proficient** | Everything at L2, and checks the resolution actually meets the underlying need, and sets a clear follow-up so it's resolved at first contact where possible. |
| **L4 Role Model** | Everything at L3, and recovers the relationship (service-recovery paradox) — customer ends more loyal than before — and the fix is logged to prevent recurrence. |

> **Support/complaints note:** the platform scores these via QA frameworks. Reconcile your rubric with `get_qa_framework`, and cross-check outcomes with `qa_scores`, `qa_heatmap`, and especially `qa_critical_errors` — a critical error (e.g. a compliance breach or broken promise) can cap a score regardless of other strengths, exactly as it should in your scorecard.

---

## Knowledge-Check Quizzes

Short quizzes to check understanding before or after a session. Each has an answer key. Mix of multiple-choice (MC), short-answer (SA), and "best next line" (BNL) items. Print the questions; keep the key.

### Quiz 1 — Objection Handling & Buyer Psychology (10 questions)

1. **(MC)** In the LEARN framework, what must happen *before* you reframe an objection?
   A) Quote a case study  B) Ask a diagnostic question  C) Restate your price  D) Offer a discount
2. **(MC)** A buyer's automatic "Not interested" in the first 30 seconds of a cold call is best described as a:
   A) Considered objection  B) Reaction  C) Buying signal  D) Isolation
3. **(SA)** Name the three root causes every objection stems from.
4. **(MC)** "I need to think about it" most commonly signals which root cause?
   A) Bias  B) Confusion  C) Uncertainty  D) Authority
5. **(SA)** Why do we isolate ("Is that the only thing stopping you?") *before* answering an objection?
6. **(BNL)** Buyer: "This looks expensive." What's the best next line?
   A) "It's actually great value."  B) "What would make it feel worth it to you?"  C) "I can knock 10% off."  D) "Compared to what?"
7. **(MC)** Loss aversion means people weigh loss vs gain at roughly:
   A) 1:1  B) 2:1 (loss heavier)  C) 1:2 (gain heavier)  D) 5:1
8. **(SA)** In System 1 / System 2 terms, which system produces a reflexive "no", and what is your job?
9. **(BNL)** Buyer: "Send me an email." Diagnose it as likely Bias. Best next line?
   A) "Sure, what's your address?"  B) "Happy to — so I send the right thing, what's the one outcome you'd need this to hit?"  C) "Emails never get read though."  D) "Are you the decision-maker?"
10. **(MC)** A rep who acknowledges then immediately pitches, skipping the diagnostic, would score which level on "Diagnose the root cause"?
    A) L1 Developing  B) L2 Consistent  C) L3 Proficient  D) L4 Role Model

**Answer key:** 1-B · 2-B · 3-Bias, Confusion, Uncertainty · 4-B · 5-To surface hidden concerns so you don't answer a symptom and leave the deal-killer untouched · 6-B · 7-B · 8-System 1 says "no"; your job is to move them into System 2 (considered) thinking · 9-B · 10-A.

### Quiz 2 — Discovery & Qualification (10 questions, name the frameworks)

1. **(MC)** Which framework is a fast four-point qualification (budget, authority, need, timing)?
   A) MEDDPICC  B) BANT  C) SPICED  D) LAER
2. **(SA)** MEDDIC stands for six things. Name at least four.
3. **(MC)** In SPIN, which question type should you spend the *most* time on?
   A) Situation  B) Problem  C) Implication  D) Need-payoff
4. **(SA)** Why keep Situation questions short and researched?
5. **(MC)** SPICED is best suited to which context?
   A) One-off transactional deals  B) Subscription / recurring-revenue lifecycle  C) Cold email  D) Complaint calls
6. **(MC)** "Challenges before money" — qualify the pain first — describes which framework?
   A) ANUM  B) CHAMP  C) BANT  D) GPCT
7. **(SA)** In the Current→Future State Gap model, what are you quantifying in the "gap"?
8. **(BNL)** Buyer describes a problem. Best implication-style next line?
   A) "What tools do you use today?"  B) "And what's that costing you across the team each month?"  C) "Great, let me show you a demo."  D) "Who signs this off?"
9. **(MC)** Which framework leads with authority first, suited to outbound?
   A) SPICED  B) ANUM  C) GPCT  D) SPIN
10. **(SA)** Why let the buyer articulate the Need-payoff ("so if we fixed this you'd…") rather than asserting the value yourself?

**Answer key:** 1-B · 2-Metrics, Economic buyer, Decision criteria, Decision process, Identify pain, Champion (Paper process/Competition for MEDDPICC) · 3-C · 4-Asking what you could have researched burns credibility · 5-B · 6-B · 7-The cost of inaction / the distance between current and desired state · 8-B · 9-B · 10-Buyers believe their own conclusions, not the seller's; it raises felt urgency and ownership.

### Quiz 3 — Customer Success (Health, QBR, Renewal) (10 questions)

1. **(MC)** A customer health score only has real value if crossing a risk threshold:
   A) Is reported monthly  B) Automatically triggers a defined action  C) Is colour-coded  D) Is shared with sales
2. **(SA)** Name two *leading* indicators that should be weighted more heavily than lagging ones.
3. **(MC)** A business review that only presents usage dashboards reads as:
   A) A strategic partnership  B) A vendor check-in  C) An expansion play  D) A renewal
4. **(SA)** List the four steps of the Business Review Structure in order.
5. **(MC)** NRR captures:
   A) New logo growth  B) Whether the existing base grows/shrinks revenue (expansion − contraction − churn)  C) Support ticket volume  D) CSAT
6. **(SA)** Give one *qualitative* churn signal that quantitative usage data typically misses.
7. **(MC)** Expansion conversations should be triggered by:
   A) A fixed calendar date  B) Usage/outcome triggers signalling readiness  C) The rep's quota timing  D) The renewal date only
8. **(BNL)** Renewal call, champion says "Let's just keep it the same." Best next line?
   A) "Great, I'll send the paperwork."  B) "Before we do — remind me what 'good' looks like for you next year, so we make sure it still fits?"  C) "Any chance you'd add seats?"  D) "Are you happy overall?"
9. **(MC)** Health scores should be built from:
   A) Intuition  B) Correlation with actual churn/renewal outcomes  C) The loudest customer  D) Sales forecasts
10. **(SA)** Why segment a health-scoring model (enterprise vs SMB) rather than use one universal threshold?

**Answer key:** 1-B · 2-e.g. usage trend, engagement frequency, executive engagement · 3-B · 4-Recap goals → Show outcomes → Surface risks → Realign the plan · 5-B · 6-e.g. champion stops asking forward-looking questions; energy shifts complacent; inertial renewal language · 7-B · 8-B · 9-B · 10-Healthy usage for a slow enterprise rollout looks unhealthy for a fast SMB; one threshold misleads.

### Quiz 4 — Support & Complaints (LAER, 5-Step, De-escalation) (8 questions)

1. **(SA)** What do the four letters of LAER stand for?
2. **(MC)** The first move with an upset customer should be to:
   A) Explain the policy  B) Let them finish and acknowledge the impact  C) Offer a refund immediately  D) Transfer to a manager
3. **(MC)** "It sounds like this has really cost you time" is an example of:
   A) Isolating  B) Labelling the emotion  C) Closing  D) A pattern interrupt
4. **(SA)** What is the service-recovery paradox?
5. **(BNL)** Customer, furious: "This is the third time this has broken!" Best next line?
   A) "Have you tried restarting it?"  B) "I'm really sorry — three times is not acceptable. Let's get to why it keeps happening, not just patch it again."  C) "That's unusual for us."  D) "I'll pass you to technical."
6. **(MC)** A critical error (e.g. a broken promise or compliance breach) should, in scoring:
   A) Be averaged in  B) Be able to cap the overall score regardless of other strengths  C) Be ignored if rare  D) Only affect CSAT
7. **(SA)** What does "first-contact resolution" measure, and why does it matter?
8. **(MC)** In the 5-step ladder, confirming the customer is satisfied and closing the loop is:
   A) Optional  B) A required step before the case is resolved  C) The manager's job  D) Only for escalations

**Answer key:** 1-Listen, Acknowledge, Explore, Respond · 2-B · 3-B · 4-A well-recovered complaint can leave the customer *more* loyal than if nothing had gone wrong · 5-B · 6-B · 7-Whether the issue is resolved in a single interaction; it drives satisfaction and cost/effort · 8-B.

---

## Role-Play Observer Scorecards

Printable checklists tied to each framework's required behaviours. For every dimension: tick the behaviours observed, give a **1-4 level** (L1-L4, or IE for Insufficient Evidence), and **write the evidence quote** — mirror the platform: no quote, no level. Total is the *lowest* dimension level (compounding), not an average.

### Scorecard 1 — Objection-Handling Role-Play (LEARN + Root-Cause)

**Rep:** ________________  **Observer:** ________________  **Date:** __________  **Scenario/objection:** ________________

| Dimension | Required behaviours (tick) | Level (IE/1-4) | Evidence quote |
|-----------|----------------------------|:--------------:|----------------|
| **Listen & Acknowledge** | ☐ Paused 1.5-2s ☐ Let buyer finish ☐ Specific acknowledgement (not filler) | ____ | "____________________" |
| **Diagnose root cause** | ☐ Asked a diagnostic question ☐ Isolated ("only thing?") ☐ Named Bias/Confusion/Uncertainty correctly | ____ | "____________________" |
| **Reframe & advance** | ☐ Addressed real concern with evidence ☐ Held vs buyer's stated goal ☐ Agreed a specific next step | ____ | "____________________" |

**Overall level (lowest dimension):** ____  **One thing to keep:** ____________  **One thing to change:** ____________

### Scorecard 2 — Discovery / Qualification Role-Play (SPIN / MEDDIC / SPICED — pick per role)

**Rep:** ________________  **Observer:** ________________  **Framework used:** ____________  **Date:** __________

| Dimension | Required behaviours (tick) | Level (IE/1-4) | Evidence quote |
|-----------|----------------------------|:--------------:|----------------|
| **Situation (light touch)** | ☐ Short, researched ☐ Didn't ask what was findable ☐ Earned the right to go deeper | ____ | "____________________" |
| **Problem / Pain** | ☐ Surfaced real difficulties ☐ Went past the first surface answer ☐ Let buyer describe in own words | ____ | "____________________" |
| **Implication / Impact** | ☐ Quantified cost of the problem ☐ Explored knock-on effects ☐ Spent real time here | ____ | "____________________" |
| **Need-payoff / Value** | ☐ Buyer articulated the value ☐ Linked to a stated goal ☐ Didn't assert value themselves | ____ | "____________________" |
| **Qualify (authority/decision/timing)** | ☐ Mapped decision process ☐ Confirmed authority ☐ Established a compelling event | ____ | "____________________" |

**Overall level (lowest dimension):** ____  **Keep:** ____________  **Change:** ____________

### Scorecard 3 — Renewal / QBR Role-Play (Business Review Structure)

**Rep:** ________________  **Observer:** ________________  **Date:** __________  **Account context:** ________________

| Dimension | Required behaviours (tick) | Level (IE/1-4) | Evidence quote |
|-----------|----------------------------|:--------------:|----------------|
| **Recap goals & show outcomes** | ☐ Recapped agreed success criteria ☐ Outcomes in customer's business terms ☐ Tied to original business case | ____ | "____________________" |
| **Surface risks honestly** | ☐ Raised a risk/gap openly ☐ Read a qualitative signal ☐ Made it jointly owned | ____ | "____________________" |
| **Realign plan & set up growth** | ☐ Updated success plan (owners both sides) ☐ Trigger-based expansion (not calendar) ☐ Customer co-authored next steps | ____ | "____________________" |

**Overall level (lowest dimension):** ____  **Keep:** ____________  **Change:** ____________

### Scorecard 4 — Complaint-Handling Role-Play (LAER + 5-Step)

**Rep:** ________________  **Observer:** ________________  **Date:** __________  **Scenario:** ________________

| Dimension | Required behaviours (tick) | Level (IE/1-4) | Evidence quote |
|-----------|----------------------------|:--------------:|----------------|
| **De-escalate (Listen & Acknowledge)** | ☐ Didn't interrupt ☐ Acknowledged impact / apologised appropriately ☐ Labelled emotion ☐ Calm downward pacing | ____ | "____________________" |
| **Explore & diagnose** | ☐ Asked before fixing ☐ Separated stated complaint from real need ☐ Reached root cause | ____ | "____________________" |
| **Resolve, confirm & close loop** | ☐ Concrete resolution + owner + timeline ☐ Confirmed satisfaction ☐ Set follow-up / logged for prevention | ____ | "____________________" |
| **Critical-error check** | ☐ No broken promise ☐ No compliance breach ☐ No dismissive language | ____ (any breach caps overall) | "____________________" |

**Overall level (lowest dimension; capped by any critical error):** ____  **Keep:** ____________  **Change:** ____________

---

## Pre/Post Assessment Design

Measure movement on the **same competencies, on the same scale**, before and after the programme — and reconcile it against the platform.

### Baseline (before training)

1. **Pull the live baseline first.** Prefer real platform data over a cold role-play:
   - `get_framework` — the exact competencies + L1-L4 anchors you'll assess against.
   - `get_assessment` / `list_assessments` — an existing scored assessment for the rep/team, if one exists.
   - `run_assessment(...)` — kick off a **live scored run** against real calls if no current baseline exists. This is the truest starting point because it uses the rep's actual conversations.
   - `competency_heatmap` / `get_competency_scores` — current per-skill strengths and gaps by rep/team, to target the programme.
   - `qa_scores` / `qa_heatmap` / `qa_critical_errors` — for support/complaints roles.
2. **Record a training baseline too.** Score one observed role-play or call per competency using the scorecards above, so you have a like-for-like number to compare after.
3. **Note Insufficient Evidence honestly** where you don't yet have enough observation. Don't backfill a guess.

### Post (after training)

Re-measure the **same competencies** with the **same scorecards**, ideally on fresh real calls:

- Re-run `run_assessment` (or pull the next `get_assessment`) on post-training calls.
- Re-score the equivalent role-play/call with the same observer scorecard.
- Compare **level-by-level on each competency**, not an overall average — the compounding scale means a single competency moving L2→L3 is the signal.

### Showing movement

| Competency | Baseline | Post | Movement | Platform trend (reconcile) |
|-----------|:--------:|:----:|:--------:|----------------------------|
| Objection Handling — Diagnose | L1 | L3 | +2 | `competency_heatmap` / `qa_improvement_metrics` |
| Discovery — Implication | L2 | L3 | +1 | ↑ confirmed |
| Complaint — Resolve & close | IE | L2 | now scored | `qa_scores` ↑, `qa_critical_errors` ↓ |

- Use **`qa_improvement_metrics`** (support/complaints) and the **competency trend** from `competency_heatmap` / `get_competency_scores` to confirm the training movement shows up in live scores, not just the room.
- The headline that lands with leadership: *"training level moved, and the platform's live score moved the same way."* That is only possible because both use the same evidence-backed 1-4 scale.

---

## Certification Checklist

"Signed off to operate solo" is a **demonstrated-behaviour bar**, not a course-completion tick. A rep is certified when they hit a **minimum level, across multiple observed calls** (not one lucky role-play), on the must-demonstrate competencies for their role. Certify against `get_framework` competencies so the bar matches the platform.

### Certification template

**Role:** ____________  **Rep:** ____________  **Certifier:** ____________  **Decision date:** __________

| # | Must-demonstrate competency | Minimum level | Observed across | Evidence (call/quote) | Met? |
|---|-----------------------------|:-------------:|:---------------:|-----------------------|:----:|
| 1 | ____________ | L__ | __ calls | "________" | ☐ |
| 2 | ____________ | L__ | __ calls | "________" | ☐ |
| 3 | ____________ | L__ | __ calls | "________" | ☐ |
| 4 | (Critical-error gate, where relevant) | Zero critical errors | __ calls | — | ☐ |

**Rule:** every row must be met, on the stated number of *separately observed* calls, before sign-off. A gap on any single row = **not yet certified** (compounding applies to certification too). Record Insufficient Evidence where observation is short — that's "keep observing", not "fail".

**Decision:** ☐ Certified to operate solo  ☐ Not yet — re-observe on: ____________  **Review date:** __________

### Filled example — Outbound BDR

| # | Must-demonstrate competency | Minimum level | Observed across | Met? |
|---|-----------------------------|:-------------:|:---------------:|:----:|
| 1 | Permission-based opener discipline (controls the first 30s) | L3 | 3 calls | ☐ |
| 2 | Reaction vs objection — pattern-interrupts a reflexive "no" | L3 | 3 calls | ☐ |
| 3 | Foundational Fit Check (BANT) — qualifies before booking | L2 | 3 calls | ☐ |
| 4 | Secures a specific, mutually-agreed next step | L3 | 3 calls | ☐ |

*Bar: L3 on opener and next-step across 3 observed calls; L2+ qualification. Reconcile with `competency_heatmap` and `top_objections` (uses their real objections).*

### Filled example — CSM

| # | Must-demonstrate competency | Minimum level | Observed across | Met? |
|---|-----------------------------|:-------------:|:---------------:|:----:|
| 1 | Business Review Structure — outcomes in customer's terms | L3 | 3 QBRs/reviews | ☐ |
| 2 | Health scoring — reads leading + qualitative risk signals | L3 | 3 accounts | ☐ |
| 3 | Renewal & Retention — rebuilds urgency, avoids inertial renewal | L2 | 2 renewals | ☐ |
| 4 | Expansion timing — trigger-based, not calendar-based | L2 | 2 accounts | ☐ |

*Bar: L3 on QBR and health scoring; L2+ on renewal and expansion. Reconcile with `get_competency_scores` and account health trend.*

### Filled example — Complaints Handler

| # | Must-demonstrate competency | Minimum level | Observed across | Met? |
|---|-----------------------------|:-------------:|:---------------:|:----:|
| 1 | De-escalation (LAER Listen & Acknowledge) | L3 | 3 complaint calls | ☐ |
| 2 | Explore & diagnose real need vs stated complaint | L3 | 3 complaint calls | ☐ |
| 3 | 5-Step resolution — resolve, confirm, close the loop | L3 | 3 complaint calls | ☐ |
| 4 | **Zero critical errors** (broken promise / compliance / dismissive) | Gate | 3 complaint calls | ☐ |

*Bar: L3 across the three LAER/5-step competencies AND a clean critical-error gate over 3 observed calls. Reconcile with `qa_scores`, `qa_heatmap`, and `qa_critical_errors` — the critical-error gate mirrors the platform's own.*

---

## How to Align with the Platform

Keep training assessment and live platform scoring speaking the same language:

1. **Run `get_framework` first.** Assess to the client's *actual* competencies and their exact L1-L4 anchor wording — not the generic examples in this file. Confirm the right framework with `list_frameworks` / `list_qa_frameworks` (and `get_qa_framework` for support/complaints).
2. **Take the live baseline from the platform.** Use `run_assessment` for a fresh scored run, or `get_assessment` / `list_assessments` for an existing one, plus `competency_heatmap` / `get_competency_scores`. Source real role-play material from `top_objections` and `get_call`.
3. **Keep the trainer's rubric wording identical to the platform's.** Copy the anchors verbatim into your scorecards and certification bars. Paraphrasing breaks comparability. When the wording is identical and the evidence is quoted, a rep's training level and their live platform score are directly comparable — which is the entire point.
