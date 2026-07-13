# Worked Examples — Three Complete Sessions, Data Pull to Assessment

This reference shows what "good" looks like end to end. Each example takes a training brief, draws down live context from the DemandIntel MCP server, diagnoses what the data reveals, and builds the whole session from it: trainer notes with timings and real scripts, participant handouts, and assessment resources.

Read these to calibrate the **quality bar** for this skill's output. Match this level of specificity — the scripts are meant to be genuinely usable, not placeholder.

> **All data in this file is illustrative.** The client "Northwind Cloud", its reps, numbers, objections, and transcript lines are invented to demonstrate the workflow. **Your real numbers come from your own MCP pulls** against your own account. When you build a session for a client, replace every figure and quote here with theirs.

The three examples, one per role group:

| # | Group | Session | Duration | Delivery |
|---|-------|---------|----------|----------|
| 1 | **Sales** | Objection Handling for an Outbound BDR team | 90 min | Online, recorded |
| 2 | **Customer Success** | QBR & Renewal workshop for CSMs / Renewals Managers | Half day (3.5 hrs) | In person |
| 3 | **Support & Complaints** | Complaint De-escalation & Resolution for Complaints Handlers | 60 min | Online, recorded |

Each follows the same six-step arc: **The brief → Step 1 Draw down the data → Step 2 What the data told us → Step 3 Trainer notes → Step 4 Handout(s) → Step 5 Assessment.**

---
---

# Example 1 — SALES: Objection Handling for an Outbound BDR Team (90 min)

## The brief

| | |
|---|---|
| **Topic** | Objection handling on cold outbound calls |
| **Role** | Outbound BDR (7 reps, one team lead) |
| **Duration** | 90 minutes |
| **Delivery** | Online (Zoom), recorded for the enablement library |
| **Audience** | Mixed tenure — 3 reps under 6 months, 4 reps 1-2 years |
| **Group size** | 8 |
| **Client / campaign** | Northwind Cloud — "Q3 Outbound — Mid-Market IT" campaign |
| **Assessment wanted?** | Yes — knowledge check + role-play scorecard |
| **Output** | Trainer notes (Word), handouts (PDF), scorecard (Word) |

---

## Step 1 — Draw down the data

Before writing a line of the session, run the grounding pass from `mcp-data-sourcing.md`. Narrating the pulls (the tool call, then the illustrative return):

**`whoami`** → confirms we're pointed at the Northwind Cloud workspace, role `enablement_manager`, read scope. Good to proceed.

**`list_clients`** → returns the accessible clients; we select **Northwind Cloud** (`client_id: nw-cloud`).

**`list_campaigns(client_id: "nw-cloud")`** → we scope to **"Q3 Outbound — Mid-Market IT"** (`campaign_id: nw-q3-mm`), 8 reps, 1,240 dials in the last 30 days.

**`competency_heatmap(campaign_id: "nw-q3-mm")`** → the team-by-skill grid. *Illustrative:*

```
Competency                        Team avg (1-4)
─────────────────────────────────────────────────
Permission-Based Opener            2.8
Discovery / Needs Questioning      2.5
OBJECTION HANDLING                 2.1   ← lowest
Value Articulation                 2.6
Next-Step / Calendar Discipline    2.4
```

Objection handling is the clear weak spot at **2.1** — the team is mid-L2 (Developing), and the session's job is to move them toward L3.

**`get_framework(framework_id: "nw-cold-outbound")`** → reads the 1-4 compounding anchors for the Objection Handling competency, so we teach and assess to *their* rubric, not a generic one. *Illustrative anchors:*

```
Objection Handling — level anchors
L1 Developing     Answers the literal words; often argues or pitches harder; concedes or ends the call.
L2 Emerging       Acknowledges before responding, but jumps to a rebuttal without diagnosing the cause.
L3 Proficient     Pauses, acknowledges, asks a diagnostic question, then responds to the ROOT cause; secures a next step.
L4 Role Model     Consistently reframes to the buyer's own goal, handles stacked objections calmly, converts the majority to a booked next step; models the behaviour for peers.
```

**`top_objections(campaign_id: "nw-q3-mm", limit: 5)`** → the team's real top five this quarter, verbatim, with frequency. *Illustrative:*

```
Rank  Objection (verbatim)                        Calls   % of objected calls
──────────────────────────────────────────────────────────────────────────
1     "We already use [a competitor]."             41       27%
2     "No budget this quarter."                     33       22%
3     "Just send me an email."                      29       19%
4     "Now's not the right time."                   24       16%
5     "We're happy as we are."                      18       12%
```

**`list_calls(campaign_id: "nw-q3-mm", disposition: "lost", objection: "competitor")`** → find a representative lost call on the #1 objection. We pick `call_id: nw-8842`.

**`get_call(call_id: "nw-8842")`** → the transcript. *Illustrative excerpt (anonymised):*

> **Prospect:** "Yeah, we already use [competitor] for that."
> **Rep:** "Oh — okay. I mean, we do a lot of the same stuff but we're a bit more modern, our reporting's better, and a lot of people find the switch pretty easy…"
> **Prospect:** "We're fine, honestly. Send me something and I'll take a look."
> **Rep:** "Sure, I'll email that over. Thanks for your time."
> *(Disposition logged: not interested. Duration: 51s.)*

The rep answered the literal words, pitched features, then folded — a textbook L1/L2 miss. Perfect teaching material.

**`rep_league_table(campaign_id: "nw-q3-mm", metric: "meetings_booked")`** → the hook for "why we're here". *Illustrative:*

```
Rank  Rep        Meetings booked (30d)   Objection→meeting save rate
─────────────────────────────────────────────────────────────────
1     Priya          14                    38%
2     Dan            11                    31%
...
7     Sam             4                    9%
8     Alex            3                    7%
```

The spread from 38% to 7% on the same objections, same script, same list — that's the whole case for the session in one table. The gap isn't leads; it's what happens in the ten seconds after the buyer pushes back.

---

## Step 2 — What the data told us

The diagnosis that shaped the session:

1. **Objection handling is the team's lowest competency (2.1)** and it's the moment that decides the call. The heatmap picks the topic for us.
2. **The top five objections are known and stable** — we don't invent scenarios, we drill the exact five the team hears daily. #1 ("already use a competitor") is over a quarter of all objected calls.
3. **The lost-call excerpt shows the pattern**: no pause, no diagnosis, straight to a feature rebuttal, then a fold to "send me an email". The team is *answering the words instead of diagnosing the cause*.
4. **The league table proves it's a skill gap, not a lead gap** — Priya saves 38% of objections, Alex 7%, on the same list. That's coachable, and it makes a relatable internal peer teacher (Priya) available.
5. **Framework fit**: the fix is a diagnostic reflex — **LEARN** (Listen, Empathise, Ask, Reframe, Next-step) plus the **Root-Cause Diagnostic** (bias / confusion / uncertainty), underpinned by **fast vs slow thinking** and **loss aversion**. We reference BANT lightly (budget objection ≠ real budget qualification) and the permission-based opener as the upstream discipline.

Session objective, stated in the team's own terms: **move the team from "answer the words" (L2) to "diagnose the cause, then respond" (L3), and lift the objection→meeting save rate.**

---

## Step 3 — Trainer notes

Delivered online, recorded. Whiteboard/poll every 10-15 minutes; trainer-called pairs rather than breakout rooms; visible timer during practice. Six-phase flow.

| Timing | Topic | Purpose | Process | Resources |
|--------|-------|---------|---------|-----------|
| **0:00–0:08** (8m) | Why we're here | Make it real with their own numbers; create safe stakes | **SAY:** "Quick one before we start. Same list, same script, same five objections everyone on this team hears. Priya's turning 38% of pushbacks into booked meetings. The bottom of the table is turning 7%. Nobody's getting worse leads than anyone else — so the entire difference is the ten seconds *after* someone says 'we already use someone'. That ten seconds is the whole session." **ASK (poll):** "Which of these five do you dread most?" (share the top-5 list). **EXPLAIN:** Team objection-handling score is 2.1 out of 4; today is about what a 3 looks like and how to get there. **TRANSITION:** "None of this is about a cleverer comeback. It's about what's happening in the buyer's head." | League-table slide; top-5 poll; heatmap "2.1 → 3" slide |
| **0:08–0:24** (16m) | Psychology / foundation | Explain WHY objections happen so responses aren't guesswork | **EXPLAIN (whiteboard, two columns):** Fast thinking vs slow thinking. On a cold call the buyer is 100% in fast, automatic, protect-my-time mode. Fast thinking says *no* first — before it's even heard you. **SAY:** "When someone says 'we're happy as we are' three seconds after picking up, that is not a considered position. That's a reflex. Arguing with a reflex just makes it dig in." **EXPLAIN:** Reaction vs objection — a reaction is reflexive (first 30 seconds, no logic); an objection is considered (after you've engaged). Different responses: pattern-interrupt a reaction, diagnose an objection. **EXPLAIN:** Loss aversion — people fear loss ~2× more than they value gain. So "you'll save time" is weak; "what's the switch actually costing you each month you leave it" is strong. **ASK:** "Of our top five, which are reflexes and which are real?" (Expect: 'send me an email' and 'happy as we are' = reflex; 'no budget', 'already use X' = usually real.) **TRANSITION:** "So we need one reflex of our own that works whether it's a reaction or a real objection. That's LEARN." | Whiteboard: fast/slow; reaction-vs-objection slide; loss-aversion one-liner |
| **0:24–0:39** (15m) | Framework / model | Give them the repeatable structure + the diagnosis | **EXPLAIN (build LEARN on screen one letter at a time):** **L**isten — pause 1.5-2 seconds, let them finish, don't flinch. **E**mpathise — one honest line that lowers the wall. **A**sk — one diagnostic question; this is the step everyone skips. **R**eframe — respond to what the Ask revealed, not the literal words. **N**ext step — always propose a specific one. **SAY:** "The magic is the A. Everyone here already Listens and sort of Empathises, then jumps straight to Reframe — which is really just a pitch. Skipping A means you're answering a question they didn't ask." **EXPLAIN (Root-Cause Diagnostic):** every objection is one of three — **Bias** ('don't sell to me' — a reflex, e.g. 'send me an email'), **Confusion** ('I don't see the value' — e.g. 'not the right time'), **Uncertainty** ('I see it but I'm not sure it'll work / it's a risk' — e.g. 'we already use X and switching is a pain'). The Ask tells you which. **ASK:** "'No budget this quarter' — bias, confusion or uncertainty?" (Answer: usually bias/deflection early; occasionally real timing. The Ask is how you tell.) **TRANSITION:** "Let's run it live on your actual number-one." | LEARN reference card (on screen + handout); three-causes slide |
| **0:39–0:57** (18m) | Live examples | Model LEARN on their real objections + their real lost call | **ACTIVITY (fishbowl the lost call):** read the `nw-8842` excerpt aloud. **ASK:** "Where did this go wrong?" (Draw out: no pause, no Ask, feature-dump, folded to 'send me an email'.) **SAY (then model the rebuild live, scripted):** walk objections #1 and #3 fully — see the scripts below the table. **EXPLAIN:** after each, name *why* it works — the pause buys slow thinking, the Ask converts a reflex into a considered answer, the reframe uses their own words. **ASK:** "What did the Ask get us that a rebuttal wouldn't?" **TRANSITION:** "Your turn — same five objections, and there's a bell." | Lost-call excerpt slide; the five worked scripts (below); Scenario Practice Sheet |
| **0:57–1:20** (23m) | Practice / role-play | Playful, competitive reps; build the reflex under mild pressure | **ACTIVITY — "Beat the Bell" (play before pedagogy):** trainer-called pairs. One is the buyer (reads an objection card verbatim), one is the rep (must run L-E-A-**R** and land a Next step before a 45-second bell). Rotate through all five objections. Room scores each attempt on one thing only: *did they Ask before they Reframed?* Thumbs up / thumbs down in chat. **SAY:** "I don't care if the reframe is perfect. I care that you Asked before you answered. Ask-then-answer beats a slick rebuttal every time." **ACTIVITY — "Priya's move":** ask Priya (league-table #1) to run one live as the peer teacher; debrief what she does differently (usually: longer pause, warmer empathise, sharper Ask). **EXPLAIN (debrief):** collect the best Ask questions the room invented onto the whiteboard as a shared bank. **TRANSITION:** "Two-minute check, then your actions." | Objection cards (5, from top_objections); bell/timer; observer scorecard; chat for scoring |
| **1:20–1:30** (10m) | Assessment & actions | Lock the learning; commit to this week | **ACTIVITY:** 6-question knowledge check (below), self-marked from the answer key on screen. **EXPLAIN (max 4 takeaways):** (1) Pause — 2 seconds of slow thinking. (2) Always Ask before you Reframe. (3) Diagnose bias / confusion / uncertainty. (4) Never end without a specific Next step. **SAY:** "This week: pick your dreaded objection from the poll at the start. Run LEARN on it on every call. Log the Ask question you used. We'll pull the save-rate table again in two weeks — same table, and I think it moves." **ASK:** "One thing each in chat — what will you do differently on your next call?" | Knowledge check + key; 4-takeaway slide; commitment in chat |

### The five worked scripts (Phase 4 — grounded in `top_objections`)

These are the model answers the trainer performs live. Each names the likely root cause and runs LEARN. Reps get these on the Scenario Practice Sheet.

```
OBJECTION #1 (27% of objected calls): "We already use [a competitor]."

L — LISTEN:      Pause 2 seconds. Do not flinch, do not jump in with "but we're better".
E — EMPATHISE:   "Makes sense — you wouldn't have gone with them if they weren't doing
                 a decent job."
A — ASK:         "Just so I don't waste your time — if there were one thing about
                 [competitor] you'd change if you could wave a wand, what would it be?"
                 → This reveals the ROOT CAUSE:
                    · "Nothing, we're happy"      → BIAS/reflex — they're protecting time
                    · "The reporting's clunky…"   → UNCERTAINTY — real gap, switching fear
R — REFRAME:     If a real gap surfaces: "That's actually the exact thing the teams who
                 move to us were stuck on — and switching's the bit everyone dreads, so we
                 built it to run alongside [competitor] for the first month, no rip-and-replace."
                 If genuinely happy: "Totally fair — I'm not going to try to talk you out of
                 something that's working."
N — NEXT STEP:   If gap: "Worth 20 minutes to show you how the teams who switched handled
                 exactly that? I've got Thursday 2pm or Friday morning."
                 If happy: "Can I send one thing that's genuinely useful even if you never
                 switch — a 2-page reporting benchmark for teams your size? Best email?"

WHY IT WORKS: The Ask converts a reflex into a considered answer. If they name a gap,
you're now solving THEIR problem, not pitching yours. Switching fear = loss aversion, so
you remove the switch risk explicitly ("runs alongside") rather than argue value.
```

```
OBJECTION #2 (22%): "No budget this quarter."

L — LISTEN:      Pause. This one gets an instant reflexive rebuttal from most reps — resist it.
E — EMPATHISE:   "Understood — nobody's got a spare pot of money sitting around right now."
A — ASK:         "Can I ask — is it that there's genuinely nothing until next quarter, or is it
                 more that this isn't yet something worth carving budget out for?"
                 → REVEALS:
                    · "Nothing till Q4"           → real TIMING — qualify the date, nurture to it
                    · "Not a priority right now"   → CONFUSION — they don't see the value yet
R — REFRAME:     If timing: "Great — then let's not talk money today at all. Let's use the next
                 few weeks to work out whether it's even worth a Q4 conversation, so when budget
                 opens you already know."
                 If priority: "Fair — and that's usually because the cost of leaving it as-is
                 hasn't been put in front of anyone. Quick one: roughly how many hours a week is
                 [problem] eating across the team right now?" (loss aversion — make the status
                 quo cost visible in their own numbers)
N — NEXT STEP:   "20 minutes, no pitch — I'll show you the number and you decide if it's a Q4
                 problem. Thursday or Friday?"

WHY IT WORKS: "No budget" is rarely a budget fact on a cold call — it's a brush-off (BANT
budget is qualified later, not at hello). The Ask separates a real timeline from a value gap,
and each gets a different, honest response.
```

```
OBJECTION #3 (19%): "Just send me an email."

L — LISTEN:      Pause. This is the classic BIAS/reflex — the buyer wants the call to end.
E — EMPATHISE:   "Happy to — I get about ten of these calls a day myself, so I know the drill."
A — ASK:         "So I send something you'll actually open rather than another ignored email —
                 what's the one thing that'd make it worth your two minutes: [X], [Y], or is
                 now just genuinely a bad moment?"
                 → REVEALS:
                    · Picks X or Y                → there IS latent interest — you can continue
                    · "Just a bad moment"          → real timing — respect it, book the callback
R — REFRAME:     If they engage: "Perfect — that's actually a 90-second thing, easier to show
                 than to write. Have you literally got 90 seconds now, or shall I grab a proper
                 15 later?"
N — NEXT STEP:   Book a specific time, or agree the email PLUS a calendar hold to review it:
                 "I'll send it and pencil 10 minutes Friday so it doesn't die in your inbox —
                 that alright?"

WHY IT WORKS: "Send me an email" is a pattern to interrupt, not a request to obey. The Ask
tests whether there's any real interest under the reflex. If yes, you convert; if it's a genuine
bad moment, you've earned a booked callback instead of a dead lead.
```

```
OBJECTION #4 (16%): "Now's not the right time."

L — LISTEN:      Pause.
E — EMPATHISE:   "Fair enough — timing's everything with this stuff."
A — ASK:         "Is it that this isn't the right time to *talk*, or not the right time to
                 *do anything about it*? Because they're quite different for me."
                 → REVEALS: CONFUSION (no felt urgency) vs a genuinely bad week.
R — REFRAME:     If no urgency: "Makes sense — most people we help weren't looking either,
                 right up until [trigger event] made it urgent overnight. Worth a quick chat
                 now so you're ahead of it rather than scrambling?" (loss aversion + social proof)
N — NEXT STEP:   "15 minutes next week — Tuesday or Wednesday — purely so it's on your radar.
                 No commitment beyond that."

WHY IT WORKS: Timing objections are usually a missing trigger, not a diary problem. The Ask
separates "bad moment" from "no urgency", and you supply a credible trigger rather than pushing.
```

```
OBJECTION #5 (12%): "We're happy as we are."

L — LISTEN:      Pause — this is often a reflex in the first 20 seconds.
E — EMPATHISE:   "Good to hear, honestly — plenty of people I call are firefighting."
A — ASK:         "That's rare, so I'm curious — is that 'happy, don't call again', or 'happy,
                 but there's one thing I'd love to sort'? Because I only chase the second one."
                 → REVEALS: a genuine hard no vs a soft 'fine' hiding one niggle.
R — REFRAME:     If a niggle appears: "That's the bit I'd focus on — the rest, leave well alone."
                 If a hard no: "Totally respect that — I'll leave you to it."
N — NEXT STEP:   If niggle: "20 minutes on just that one thing — worth it? Thursday?"
                 If hard no: "Can I check back in six months in case anything shifts? No emails
                 in between, promise." (keeps the door open, respects the no)

WHY IT WORKS: "Happy as we are" is complacency, not information. The Ask gives permission to
admit one imperfection without feeling sold to — and one niggle is all you need for a meeting.
Respecting a genuine no builds credibility for the next cycle.
```

---

## Step 4 — Handouts

### Handout 4a — Framework Reference Card (1 page)

```
┌──────────────────────────────────────────────────────────────────────┐
│  OBJECTION HANDLING — THE LEARN REFLEX          Northwind Cloud · BDR  │
│                                                                        │
│  Every objection on a cold call is a REFLEX until proven otherwise.    │
│  Don't answer the words. Diagnose the cause, then respond.             │
│                                                                        │
│  L  LISTEN     Pause 1.5–2 sec. Let them finish. Don't flinch.         │
│  E  EMPATHISE  One honest line that lowers the wall.                   │
│  A  ASK  ←★    ONE diagnostic question. THE step everyone skips.       │
│  R  REFRAME    Answer what the ASK revealed — not the literal words.   │
│  N  NEXT STEP  Always propose a specific one (a time, not "I'll chase").│
│                                                                        │
│  ── DIAGNOSE THE ROOT CAUSE (what the ASK tells you) ──                │
│  BIAS         "Don't sell to me." A reflex protecting time.            │
│               → e.g. "send me an email", "happy as we are"             │
│  CONFUSION    "I don't see the value." Benefit unclear/irrelevant.     │
│               → e.g. "not the right time", "no budget"                 │
│  UNCERTAINTY  "I see it, but is it a risk?" Fear of getting it wrong.  │
│               → e.g. "we already use X, switching's a pain"            │
│                                                                        │
│  ── WHY IT WORKS ──                                                    │
│  The pause moves them from FAST thinking (says no) to SLOW thinking    │
│  (can decide). LOSS AVERSION: make the cost of the status quo visible  │
│  in THEIR numbers — people fear a loss ~2× more than they want a gain. │
│                                                                        │
│  GOLDEN RULE:  ASK before you REFRAME. Every time.                     │
└──────────────────────────────────────────────────────────────────────┘
```

### Handout 4b — Scenario Practice Sheet (built from the 5 real objections)

> These are **your team's actual top five objections this quarter** (source: `top_objections`, Q3 Outbound). Run LEARN on each. Write your own Ask question — the diagnostic question is the skill.

| # | Objection (verbatim) | Freq | Likely root cause | YOUR "Ask" question | YOUR next step |
|---|---|---|---|---|---|
| 1 | "We already use [a competitor]." | 27% | Bias or Uncertainty | ________________ | ________________ |
| 2 | "No budget this quarter." | 22% | Bias or real Timing | ________________ | ________________ |
| 3 | "Just send me an email." | 19% | Bias (reflex) | ________________ | ________________ |
| 4 | "Now's not the right time." | 16% | Confusion (no urgency) | ________________ | ________________ |
| 5 | "We're happy as we are." | 12% | Bias (complacency) | ________________ | ________________ |

**Self-check after each call this week:** Did I *pause*? Did I *Ask before I Reframed*? Did I book a *specific* next step? Three ticks = an L3 call.

---

## Step 5 — Assessment

### 5a — Knowledge check (6 questions, with answer key)

> Self-marked. Ties directly to the `get_framework` anchors so a rep's score here is comparable to their live platform score.

**Q1.** What is the *one step* in LEARN that most reps skip, and why does skipping it fail?
**Q2.** A prospect says "just send me an email" four seconds into the call. Is this most likely a *reaction* or a considered *objection*? What does that tell you to do?
**Q3.** Name the three root causes an objection can stem from, and give one of our top-five objections that typically maps to each.
**Q4.** Why is "no budget this quarter" rarely a true budget qualification on a cold call?
**Q5.** A buyer says switching from a competitor is "a pain". Which root cause is this, and which psychological principle should shape your reframe?
**Q6.** Complete the golden rule: "________ before you ________."

**Answer key:**
- **Q1.** *Ask* (the diagnostic question). Skipping it means you Reframe against the literal words instead of the real cause — you answer a question they didn't ask, which is just pitching harder.
- **Q2.** A reaction — reflexive, in the first 30 seconds, no logic behind it. Don't obey it or argue it; pattern-interrupt with an Ask that tests for real interest under the reflex.
- **Q3.** **Bias** (e.g. "send me an email" / "happy as we are"); **Confusion** (e.g. "not the right time" / "no budget" as low priority); **Uncertainty** (e.g. "we already use X, switching's a pain").
- **Q4.** Because budget is qualified later once value is established (BANT hygiene) — on a cold call "no budget" is almost always a brush-off, not a financial fact. The Ask separates a genuine timeline from a value gap.
- **Q5.** *Uncertainty* (they see value but fear the risk of switching). Use **loss aversion / risk reduction** — remove the switch risk ("runs alongside for the first month") rather than arguing value.
- **Q6.** "**Ask** before you **Reframe**."

### 5b — Role-play observer scorecard

> Score each attempt on the LEARN behaviours. Anchored to the framework's L1-L4 so trainer scoring lines up with `competency_heatmap`.

| Behaviour | Not yet (1) | Emerging (2) | Proficient (3) | Role model (4) | Score |
|---|---|---|---|---|---|
| **Listen** — pause, no flinch, let them finish | Talks over / rushes in | Short pause, visibly tense | Clean 1.5-2s pause, composed | Uses silence deliberately to shift buyer to slow thinking | ☐ |
| **Empathise** — lowers the wall | Skips it / sounds fake | One rote line | Genuine, specific line | Warm, disarming, buys real goodwill | ☐ |
| **Ask** — diagnoses before responding ★ | No Ask; rebuts the words | Asks but ignores the answer | One good diagnostic Q, uses the answer | Sharp Q that surfaces the true cause every time | ☐ |
| **Reframe** — answers the root cause | Feature-dumps | Addresses literal words | Responds to the diagnosed cause | Reframes to buyer's own goal/numbers; loss aversion | ☐ |
| **Next step** — specific, booked | Folds / "I'll email" | Vague follow-up | Proposes a specific time/action | Secures a calendar-booked next step, even on a no | ☐ |

**Overall:** 5-9 = L1 · 10-14 = L2 · 15-18 = L3 · 19-20 = L4. **Target for this session: every rep reaches 15 (L3) on at least three of the five objections.**

---
---

# Example 2 — CUSTOMER SUCCESS: QBR & Renewal Workshop for CSMs / Renewals Managers (Half day)

## The brief

| | |
|---|---|
| **Topic** | Running outcome-led QBRs and holding value at renewal |
| **Role** | CSM (5) + Renewals Manager (2) |
| **Duration** | Half day — 3.5 hours (with two breaks) |
| **Delivery** | In person, one room |
| **Audience** | Experienced (all 18+ months in seat) |
| **Group size** | 7 |
| **Client / campaign** | Northwind Cloud — Customer Success book, Enterprise segment |
| **Assessment wanted?** | Yes — competency rubric excerpt + role-play scorecard |
| **Output** | Trainer notes (Word), QBR reference card + renewal practice sheet (PDF), rubric (Word) |

---

## Step 1 — Draw down the data

**`whoami`** → Northwind Cloud workspace, role `cs_lead`. Proceed.

**`list_clients`** → select **Northwind Cloud**. **`get_client_features(client_id: "nw-cloud")`** → confirms competency + QA + health-score features are on for the CS book. Good — we can teach to live frameworks.

**`competency_heatmap(segment: "cs-enterprise")`** → the CS team-by-skill grid. *Illustrative:*

```
Competency                     Team avg (1-4)
────────────────────────────────────────────────
Relationship / Trust            3.1
Onboarding / Time-to-Value      2.9
VALUE REALISATION               2.2   ← lowest
EXPANSION                       2.3   ← second lowest
Renewal / Retention             2.7
Health-Score Discipline         2.5
```

Two adjacent weak spots — **Value Realisation (2.2)** and **Expansion (2.3)**. These are the same muscle: connecting activity to the customer's outcomes. That's the workshop.

**`get_framework(framework_id: "nw-cs-enterprise")`** → the 1-4 anchors for Value Realisation (the rubric we assess against — reproduced in Step 5). *Illustrative summary:* L1 reports usage; L2 mentions outcomes but doesn't quantify; L3 ties activity to the customer's own stated, quantified outcomes; L4 co-owns a live value narrative the customer repeats internally.

**`qa_action_plans(segment: "cs-enterprise")`** → the QA team's flags on recent QBRs. *Illustrative:*

```
Recurring QA findings — QBRs (last quarter)
────────────────────────────────────────────────────────────────
• 6 of 9 reviewed QBRs OPENED with the usage dashboard, not the
  customer's stated business goals. "Feels like a vendor check-in."
• Risks not surfaced proactively in 5 of 9 — only good news shown.
• Expansion raised in only 2 of 9, and both as a bolt-on pitch at
  the end rather than tied to an achieved outcome.
• Action plan: re-sequence the QBR around outcomes; make risk a
  standing agenda item; earn expansion from a proof point.
```

**`list_calls(segment: "cs-enterprise", type: "renewal", disposition: "discounted")`** → find a renewal where margin leaked. Pick `call_id: nw-5507`.

**`get_call(call_id: "nw-5507")`** → *illustrative excerpt (anonymised):*

> **Customer:** "Budgets are tight this year — we'd need a better number to renew."
> **CSM:** "I hear you. I really don't want to lose you — I can probably do 15% off if that helps get it over the line?"
> **Customer:** "Okay, that helps. Send the paperwork."
> *(Renewed at −15%. No term change, no expansion, no trade. Duration: 6m.)*

The CSM conceded 15% for nothing in return — no multi-year, no extra team, no case study — the moment price came up. Classic *concede, don't trade*, and no anchor to the value already delivered. Prime teaching moment.

**`ask("For the CS enterprise segment, what health-score signals precede the renewals that discount or churn?")`** *(uses credits — flagged)* → *illustrative answer:* "Accounts that discounted or churned showed, 30-90 days prior: a champion who stopped asking forward-looking questions; QBRs where energy shifted from future to complacent ('let's just keep it the same'); a drop in exec attendance. Usage often stayed flat, masking the risk."

**`most_improved_rep(segment: "cs-enterprise")`** → *illustrative:* Renewals Manager **Farah** moved Value Realisation 2.0 → 3.2 in a quarter by rebuilding her QBR around outcomes. Relatable internal peer teacher for the room.

---

## Step 2 — What the data told us

1. **The gap is one muscle worn two ways.** Value Realisation (2.2) and Expansion (2.3) are the lowest competencies, and the QA flags show *why*: QBRs lead with usage dashboards, not the customer's outcomes. If you can't articulate value, you can't expand from it and you can't defend price at renewal.
2. **The QBR itself is mis-sequenced.** Six of nine opened on the dashboard; risks hidden; expansion bolted on at the end. Re-sequencing the QBR (outcomes → risks → roadmap → expansion) is the central fix.
3. **Renewals are leaking margin through free concessions.** The `nw-5507` excerpt shows a 15% discount conceded instantly with nothing traded and no anchor to delivered value.
4. **The soft signals are being missed.** The `ask` result gives us the qualitative churn signals (complacent language, champion disengagement) to train CSMs to *hear* — this is health scoring as a listening skill, not a dashboard.
5. **Framework fit:** **Business Review Structure** (value → risks → roadmap → expansion), **Renewal & Retention** with **Trade, Never Concede**, **SPICED** as the re-qualification lens for the value story, and **Customer Health Scoring** for the soft signals. Psychology: **peak-end rule** (a QBR is judged on its peak and its ending — open on their win, close on the future) and **loss aversion** (frame renewal around what they'd lose, and never give a concession free).

Objective: **move the team from usage-led check-ins to outcome-led business reviews that earn expansion and hold price — Value Realisation 2.2 → 3.**

---

## Step 3 — Trainer notes

In person, 3.5 hours, two breaks. Play-before-pedagogy in the practice blocks.

| Timing | Topic | Purpose | Process | Resources |
|--------|-------|---------|---------|-----------|
| **0:00–0:15** (15m) | Why we're here | Confront the gap honestly with their own QA data | **SAY:** "Our QA reviewed nine of last quarter's QBRs. Six of them opened with the usage dashboard. The customer's exact words in one debrief were 'it feels like a vendor check-in'. We're a 3.1 on relationships — people like us. But we're a 2.2 on Value Realisation, and that's the number that renews accounts and grows them. Today's about closing that one gap." **ASK:** "Hands up — when you build a QBR deck, what's slide one, honestly?" (Expect: usage/adoption stats.) **EXPLAIN:** Farah moved from 2.0 to 3.2 in a quarter doing one thing differently — she'll show us. **TRANSITION:** "Why does opening on a dashboard cost us money? Psychology first." | Heatmap slide (2.2/2.3); QA quote; Farah intro |
| **0:15–0:40** (25m) | Psychology / foundation | Explain WHY outcome-led beats usage-led | **EXPLAIN (peak-end rule):** people judge an experience by its peak and its end, not the average. A QBR that opens on a dashboard has no peak and a limp end ('any questions?'). Open on *their* win, end on *their* future — that's what they remember at renewal. **EXPLAIN (loss aversion):** customers renew to avoid losing an outcome they now rely on, ~2× more than to gain a new feature. So the value story isn't "look what you used", it's "look what you'd lose". **EXPLAIN (the soft signals — from `ask`):** churn is audible 30-90 days early — a champion who stops asking about the future, a room that's gone complacent ('let's keep it the same'), exec attendance sliding. Usage can stay flat and hide all of it. **ASK:** "Whose account just flashed in your head when I said 'let's keep it the same'?" (Let it land.) **TRANSITION:** "So we need a review structure that leads with outcomes and surfaces risk on purpose." | Peak-end slide; loss-aversion slide; churn-signals checklist |
| **0:40–1:10** (30m) | Framework / model | Teach the QBR structure + re-qualification + health signals | **EXPLAIN (Business Review Structure — 4 parts):** (1) **Recap goals** agreed last time, in their words. (2) **Show outcomes achieved** in their business metrics, not usage stats. (3) **Surface risks openly** — the honest bit that builds trust. (4) **Realign the plan** with next milestones and owners, and *earn* the expansion conversation from a proof point. **EXPLAIN (SPICED re-qualification):** before every QBR, re-ask: what's their **S**ituation now, the **P**ain, the **I**mpact/cost, the **C**ritical event/urgency, and the **D**ecision path to a renewal/expansion. Business cases drift — re-qualify them. **EXPLAIN (Health Scoring as listening):** a score is only real if crossing a threshold triggers an action; teach the qualitative signals as the earliest triggers. **ACTIVITY:** each person re-sequences one of their real upcoming QBRs onto the 4-part structure on a worksheet. **TRANSITION:** break, then we watch it done live. | QBR reference card; SPICED strip; worksheet |
| *1:10–1:20* | **Break (10m)** | | | |
| **1:20–1:45** (25m) | Live examples | Model outcome-led value + the traded renewal | **ACTIVITY (Farah, peer teacher):** Farah walks her re-built QBR opener — see the scripted model below. **EXPLAIN:** name why it works — opens on their number (peak), quantifies the outcome (Value Realisation L3), surfaces a risk before they do (trust). **ACTIVITY (fishbowl the leaked renewal):** read `nw-5507` aloud. **ASK:** "What did that 15% buy us?" (Answer: nothing — conceded, not traded.) **SAY (model the rebuild live):** run the Trade-Never-Concede version — see scripts below. **EXPLAIN:** every give matched by a get; anchor to the value already delivered before discussing the number. **TRANSITION:** "Now you run it — and there's a catch." | Farah's QBR script; nw-5507 excerpt; traded-renewal script |
| **1:45–2:45** (60m) | Practice / role-play | Rehearse both moves under realistic pressure; playful stakes | **ACTIVITY — "Outcome or Out" (QBR opener drill):** in trios (CSM / customer / observer). CSM has 90 seconds to open a QBR. If the first sentence mentions usage/adoption stats, the observer rings a bell and they restart. Only an outcome-led opener survives. Rotate. **ACTIVITY — "The Trade Table" (renewal negotiation, play-forward):** customer plays a scripted discount demand (cards built from the real signals). CSM may not say a number without naming what they get in return. Observer tallies "concessions given free" — lowest tally wins a daft prize. **SAY:** "You are physically not allowed to give a discount without a trade. If you slip, the table shouts 'FREE!'" (competition + mild embarrassment = the reflex sticks). **EXPLAIN (debrief):** collect the best trades the room invented (multi-year, extra team, case study, faster payment, reference call) onto a shared "trade bank". **TRANSITION:** "Let's lock how we'll measure this." | Trio cards; bell; "trade bank" flipchart; renewal practice sheet; observer scorecard |
| *2:45–2:55* | **Break (10m)** | | | |
| **2:55–3:30** (35m) | Assessment & actions | Score against the live rubric; commit | **ACTIVITY:** one scored role-play each on the observer scorecard (below), mapped to the `get_framework` Value Realisation anchors, so their workshop score is comparable to their platform score. **EXPLAIN (max 4 takeaways):** (1) Open on their outcome, not your dashboard (peak-end). (2) Surface one risk before they do. (3) Earn expansion from a proof point, never bolt it on. (4) Never concede — trade. **SAY:** "This week: for your next renewal, write the trade menu *before* the call — three things you'd want in return for any movement on price. And re-sequence your next QBR onto the card. We'll re-run the Value Realisation heatmap next month." **ASK:** "One account each — what's the outcome you'll open their next QBR with?" | Scorecard; rubric excerpt; 4-takeaway slide |

### The worked scripts (Phase 4)

```
QBR OPENER — Farah's re-built model (Value Realisation L3)

WEAK (usage-led, what most opened with):
  "Thanks for joining! So, adoption's up — you're at 340 active users, logins are
   up 12%, and you've run 1,900 reports this quarter. Let's walk through the dashboard…"
   → Reads as a vendor check-in. No peak. No stake.

STRONG (outcome-led):
  RECAP GOAL:   "When we kicked off, you told me the one number that mattered was
                 getting month-end close from 9 days down to 5 — because your team was
                 losing the first week of every month to it."
  SHOW OUTCOME: "As of last month, close is running at 5.5 days. That's roughly three
                 working days a month back for a team of eight — call it 24 days of
                 senior finance time a quarter you weren't spending before."
  (Only NOW, briefly): "The usage behind that is healthy — but the 5.5 days is the bit
                 that matters, so that's where I want to spend our time."
  SURFACE RISK: "One honest flag: two of your power users left in Q2 and adoption in the
                 AP team has dipped. If we don't re-train there, that 5.5 could slip back
                 toward 7 — I've got a plan for that."
  REALIGN:      "So for next quarter: protect the close-time gain, fix the AP dip, and
                 there's a second use case — [expansion] — that could take close under 5.
                 Worth 15 minutes on that today?"

WHY IT WORKS: Opens on THEIR number (peak-end). Quantifies the outcome in their business
terms (Value Realisation L3, not L1 usage). Surfaces a risk before they do (builds trust,
lets loss aversion work FOR the renewal). Earns the expansion off a proof point.
```

```
RENEWAL — Trade, Never Concede (rebuild of the leaked nw-5507 call)

CUSTOMER: "Budgets are tight this year — we'd need a better number to renew."

WEAK (what happened): "I don't want to lose you — I can do 15% off." → conceded, got nothing.

STRONG:
  ANCHOR FIRST (before any number):
    "Totally hear you on budgets. Before we talk price — can we just put it next to what
     it's returning? We agreed this saved your finance team ~24 days a quarter. At even a
     conservative rate that's [£X] of time back against a [£Y] subscription. So the number
     we should get right is the return, and right now that's strongly positive."
  IF THEY STILL PUSH — TRADE, never concede:
    "Here's what I can do. I can move on price — but I'd need something in return that makes
     it work our end. If you can go to a two-year term, I can hold this year flat. Or if you
     add the AP team's ten seats now rather than in Q3, I can bring the blended rate down.
     Which of those works better for you?"
  IF THEY WANT MORE:
    "I can go a little further if you're happy to be a reference for two similar finance
     teams — that's genuinely valuable to us. Deal?"
  CLOSE (written, owned next step):
    "Great — so: two-year term, this year flat, you as a reference in Q4. I'll put that in
     writing today and we both sign by Friday. Who's your side on the paperwork?"

WHY IT WORKS: Anchors on agreed value in the customer's own numbers BEFORE the price talk
(reframes cost → return). Every give is matched by a get — a free discount trains the buyer
to expect more and signals the price was soft. Closes on a written, owned next step.
```

---

## Step 4 — Handouts

### Handout 4a — QBR Structure Reference Card (1 page)

```
┌──────────────────────────────────────────────────────────────────────┐
│  THE BUSINESS REVIEW — OUTCOMES, NOT DASHBOARDS   Northwind Cloud · CS │
│                                                                        │
│  A QBR that reports usage = a vendor check-in.                         │
│  A QBR that reconnects to their OUTCOMES = a strategic partnership.    │
│                                                                        │
│  1  RECAP THE GOAL   Their stated success metric, in their words.     │
│                      "You told me the number that mattered was ___."   │
│  2  SHOW THE OUTCOME  In their business metric, quantified. NOT usage. │
│                      "That's now at ___ — worth ~___ to you."          │
│  3  SURFACE THE RISK  Say the hard thing before they do. Builds trust. │
│                      "One honest flag: ___. Here's my plan for it."    │
│  4  REALIGN & EARN    Next milestones + owners. Expansion from a proof │
│                      point, never a bolt-on. "Worth 15 min on ___?"    │
│                                                                        │
│  ── RE-QUALIFY FIRST (SPICED) ──                                       │
│  Situation now · Pain · Impact/cost · Critical event · Decision path   │
│  Business cases drift. Re-ask before every review.                    │
│                                                                        │
│  ── LISTEN FOR CHURN (30–90 days early) ──                            │
│  ☐ Champion stops asking forward-looking questions                    │
│  ☐ Room goes complacent: "let's just keep it the same"                │
│  ☐ Exec attendance slips     ☐ Usage flat but energy gone             │
│                                                                        │
│  PSYCHOLOGY: Peak-end — open on their win, close on their future.     │
│  Loss aversion — frame renewal around what they'd LOSE.               │
└──────────────────────────────────────────────────────────────────────┘
```

### Handout 4b — Renewal Negotiation Practice Sheet

> Prep this **before** any renewal call. The discipline is: never a number without a trade; anchor to value first.

**1. Anchor line (fill in from this account's QBR outcomes):**
"Before we talk price — this saved you ______ [quantified outcome] against a ______ subscription, so the return is ______."

**2. My trade menu (three things I'd want in return for any price movement):**

| If I move on… | I need in return… |
|---|---|
| Price this year | ☐ 2-year term ☐ multi-year ☐ ______ |
| Blended rate | ☐ add [team/seats] now ☐ upfront annual ☐ ______ |
| A further step | ☐ reference call ☐ case study ☐ exec intro ☐ ______ |

**3. Walk-away:** the lowest number I'll go to, and what I do if they won't trade: ______________

**4. Written next step + owners:** ______________ (name both sides, agree the date, on the call).

**Self-check:** Did I anchor to value before price? Did every give get a get? Did I leave with a written, owned next step? Three ticks = a held renewal.

---

## Step 5 — Assessment

### 5a — Competency rubric excerpt: "Value Realisation" (4-level, from `get_framework`)

> Reproduced from the client's own framework so trainer scoring matches `competency_heatmap`. Compounding scale — each level assumes the one below.

| Level | Value Realisation — what it looks like | Evidence a trainer/observer would see |
|---|---|---|
| **L1 — Developing** | Reports **usage and adoption**. Value = "look how much you used it." | QBR opens on a dashboard; no reference to the customer's business goal. |
| **L2 — Emerging** | Mentions **outcomes** but doesn't quantify or tie to the customer's own metric. | "Things are going well, adoption's strong and you're seeing benefits" — no number. |
| **L3 — Proficient** | Ties activity to the customer's **own stated, quantified outcome** in their business terms; surfaces risk to it. | "Close is at 5.5 days vs your 5-day goal — ~24 senior-finance days/quarter back." Names a risk to the gain. |
| **L4 — Role Model** | **Co-owns a living value narrative** the customer repeats internally; uses it to earn expansion and hold price without discounting. | Customer restates the value themselves; expansion earned off the proof point; renewal held via a trade. |

**Workshop target:** every participant demonstrates **L3** on a scored QBR opener role-play.

### 5b — Role-play observer scorecard (QBR + renewal)

| Behaviour | Not yet (1) | Emerging (2) | Proficient (3) | Role model (4) | Score |
|---|---|---|---|---|---|
| **Opens on outcome** (peak-end) | Opens on usage/dashboard | Outcome mentioned late | Opens on their quantified outcome | Opens on their number; they lean in | ☐ |
| **Quantifies value** in their metric | Features/usage only | Outcome, not quantified | Quantified in their business terms | Customer restates the value | ☐ |
| **Surfaces risk** proactively | Only good news | Risk if asked | Names a risk before they do | Names risk + owned mitigation plan | ☐ |
| **Earns expansion** from a proof point | No expansion / hard pitch | Bolted on at the end | Tied to an achieved outcome | Customer asks about it first | ☐ |
| **Trades, never concedes** (renewal) | Discounts free | Vague trade | Every give matched by a get | Anchors value first, trades, written owned close | ☐ |

**Overall:** 5-9 = L1 · 10-14 = L2 · 15-18 = L3 · 19-20 = L4.

---
---

# Example 3 — SUPPORT & COMPLAINTS: Complaint De-escalation & Resolution (60 min)

## The brief

| | |
|---|---|
| **Topic** | De-escalating and resolving complaints |
| **Role** | Complaints Handler (4) + Customer Support Agent (5) |
| **Duration** | 60 minutes |
| **Delivery** | Online (Teams), recorded |
| **Audience** | Mixed — 4 experienced handlers, 5 newer support agents |
| **Group size** | 9 |
| **Client / campaign** | Northwind Cloud — Support & Complaints queue |
| **Assessment wanted?** | Yes — observer scorecard + certification checklist |
| **Output** | Trainer notes (Word), LAER + 5-step card (PDF), scorecard + checklist (Word) |

---

## Step 1 — Draw down the data

**`whoami`** → Northwind Cloud, role `support_lead`, QA scope. Proceed. Select **Northwind Cloud** via `list_clients`.

**`qa_heatmap(queue: "complaints")`** → call-quality scores by QA topic across the complaints queue. *Illustrative:*

```
QA topic                        Team avg (1-4)     Pass rate
──────────────────────────────────────────────────────────────
Opening / Identity check         3.2               94%
Active listening                 2.4               61%
ACKNOWLEDGE & EMPATHISE          1.9               48%   ← weakest
Ownership (no blame-shifting)    2.0               52%   ← critical
Resolution & next steps          2.6               70%
CONFIRM SATISFACTION / close     2.1               55%   ← weak
```

Three linked weak spots: hollow acknowledgement (1.9), blame-shifting (2.0), and closing without confirming satisfaction (2.1). The middle and the end of the call are failing.

**`qa_critical_errors(queue: "complaints", limit: 20)`** → the serious, non-negotiable failures. *Illustrative:*

```
Critical QA failures (last 60 days)
────────────────────────────────────────────────────────────────
• BLAME-SHIFT — agent told the customer "that's the billing team's
  fault, nothing I can do" (7 instances). Auto-fail.
• HOLLOW APOLOGY — "sorry for any inconvenience" with no
  acknowledgement of the actual problem (11 instances).
• CLOSED WITHOUT CONFIRMING — call ended without checking the
  customer was actually satisfied / issue resolved (9 instances).
```

**`get_qa_framework(queue: "complaints")`** → the QA rubric anchors we'll assess against (used in Step 5).

**`list_calls(queue: "complaints", disposition: "escalated")`** → find an escalated complaint. Pick `call_id: nw-3319`.

**`get_call(call_id: "nw-3319")`** → *illustrative excerpt (anonymised):*

> **Customer** *(angry)*: "This is the third time I've called about the same billing error. Nobody's fixed it and I've been charged again!"
> **Agent:** "Right, okay. So that would be the billing team really, they handle the charges, not us. I can pass a message on but I can't promise anything. Sorry for any inconvenience caused."
> **Customer:** "That's not good enough — I want a manager."
> **Agent:** "Okay, I'll try to escalate it."
> *(Escalated. QA flags: blame-shift, hollow apology, no ownership, no satisfaction check.)*

Every one of the three critical errors in a single 40-second exchange. Ideal — and painfully recognisable — teaching material.

**`qa_action_plans(queue: "complaints")`** → *illustrative:* "Priority: eliminate blame-shifting (own it, don't disown it); replace formulaic apologies with named-emotion acknowledgement; never close without an explicit satisfaction check."

---

## Step 2 — What the data told us

1. **The middle and end of the complaint call are failing.** Acknowledge & Empathise (1.9) and Confirm Satisfaction (2.1) are the weakest QA topics; ownership (2.0) is failing too. The opening is fine — agents lose it after the problem is stated.
2. **Three named critical errors recur** and each is a hard fail: **blame-shifting**, **hollow apology**, and **closing without confirming satisfaction**. These become the session's non-negotiables.
3. **The escalated call excerpt contains all three** in one exchange — a perfect before/after teaching artefact.
4. **The fix is a de-escalation reflex, not a script.** The psychology matters: an angry customer is flooded (fast thinking), so naming the emotion and owning the problem calms the nervous system before any fix can land.
5. **Framework fit:** **LAER** (Listen, Acknowledge, Explore, Respond) as the conversational spine, the **5-step Complaints Handling ladder** (Acknowledge, Empathise, Investigate, Resolve, Follow-up) as the resolution structure, and **de-escalation psychology** — the **service recovery paradox** (a well-handled complaint can leave a customer *more* loyal than if nothing had gone wrong), **naming the emotion**, and **controlled vocal pacing**.

Objective: **move the team from hollow, blame-shifting, unconfirmed complaint handling to owned, empathetic, confirmed resolution — Acknowledge & Empathise 1.9 → 3, and zero critical errors.**

---

## Step 3 — Trainer notes

Online, recorded, 60 minutes — tight. Whiteboard/poll every 10 minutes; trainer-called pairs.

| Timing | Topic | Purpose | Process | Resources |
|--------|-------|---------|---------|-----------|
| **0:00–0:06** (6m) | Why we're here | Confront the real failures without shaming individuals | **SAY:** "QA pulled our complaint calls this quarter. Three things keep costing us: we tell customers it's another team's fault, we say 'sorry for any inconvenience' without ever naming what actually went wrong, and we hang up without checking they're actually happy. Nearly half our calls miss on acknowledgement. None of that is about caring less — it's about not having a reflex for the hardest moment. That's what we're fixing in the next hour." **ASK (poll):** "When a customer's really angry, what's your instinct — explain, apologise, or fix?" **TRANSITION:** "All three are right eventually. In the wrong order they make it worse. Here's why." | QA heatmap slide (1.9/2.0/2.1); critical-errors list; poll |
| **0:06–0:20** (14m) | Psychology / foundation | Explain WHY an angry customer needs the emotion handled first | **EXPLAIN (fast thinking, flooded):** an angry customer is in full fast-thinking, fight-or-flight mode. They literally can't process your fix until the emotion drops. Jumping to a solution (or a defence) while they're flooded feels dismissive and escalates them. **EXPLAIN (name the emotion):** naming a feeling reduces its intensity — "I can hear how frustrating this is, especially the third time" lowers the temperature more than any apology. **EXPLAIN (service recovery paradox):** a complaint handled brilliantly can leave a customer *more* loyal than if nothing had gone wrong. A complaint is a retention opportunity, not damage control. **EXPLAIN (controlled pacing):** slow down, lower your pitch, downward inflection — your calm becomes their calm; your rush becomes their panic. **ASK:** "Why does 'sorry for any inconvenience' actually annoy people more?" (It names nothing — it's a shield, not an acknowledgement.) **TRANSITION:** "So we need a reflex that handles the emotion before the fix. That's LAER." | Whiteboard: flooded brain; service-recovery-paradox slide; pacing demo |
| **0:20–0:32** (12m) | Framework / model | Teach LAER + the 5-step ladder | **EXPLAIN (LAER — the spine):** **L**isten (let them fully vent, no interrupting), **A**cknowledge (name the emotion + the specific problem — own it), **E**xplore (ask to understand the full picture), **R**espond (only now — resolve, or set a clear next step). **EXPLAIN (5-step ladder — the resolution):** Acknowledge → Empathise → Investigate → Resolve → Follow-up. LAER handles the conversation; the ladder makes sure you actually close it. **SAY:** "The two failures we keep making both live in the same place: we skip a real Acknowledge, and we skip Follow-up/confirm. Nail those two and the QA scores move on their own." **EXPLAIN (the non-negotiables — from `qa_critical_errors`):** never blame another team ("own it, don't disown it"); never a hollow apology (name the actual problem); never close without confirming satisfaction. **TRANSITION:** "Let's watch what happens when you skip all three — then fix it." | LAER + 5-step card; three non-negotiables slide |
| **0:32–0:44** (12m) | Live examples | Model the rebuild on the real escalated call | **ACTIVITY (fishbowl):** read the `nw-3319` excerpt aloud. **ASK:** "Name the three failures." (Blame-shift, hollow apology, no confirm.) **SAY (model the rebuild live, scripted):** run the full LAER + ladder version — see the script below the table — with de-escalation phrases called out. **EXPLAIN:** name *why* each move works — the emotion-naming calms the flood, ownership stops the escalation trigger, the satisfaction check closes the loop and triggers the service-recovery paradox. **ASK:** "What changed the customer's tone — the apology or the ownership?" **TRANSITION:** "Your turn, and I'm going to make the customers difficult on purpose." | nw-3319 excerpt slide; de-escalation phrase bank; role-play sheet |
| **0:44–0:56** (12m) | Practice / role-play | Build the reflex under realistic heat; keep it playful | **ACTIVITY — "Cool the Room" (play before pedagogy):** trainer-called pairs. One plays a customer from a real QA-failure card (angry, repeating, threatening to leave); the other must run LAER. Rule: **you cannot say a single word about the fix until you've named the emotion AND owned the problem.** If they jump to the solution, the "customer" says "you're not listening!" and they restart. **ACTIVITY — "Ban the phrase":** "sorry for any inconvenience" and "that's another team" are outlawed — anyone who says them owes the group a silly forfeit (unmute and compliment the customer). Laughter lowers the fear of trying the new phrasing. **EXPLAIN (debrief):** collect the best real acknowledgement lines the room invents onto a shared phrase bank. **TRANSITION:** "Two minutes on how we'll know it worked." | QA-failure cards; forfeit; phrase-bank whiteboard; observer scorecard |
| **0:56–1:00** (4m) | Assessment & actions | Lock it; commit; certify | **EXPLAIN (max 4 takeaways):** (1) Handle the emotion before the fix — name it. (2) Own it, don't disown it — never blame another team. (3) No hollow apologies — name the actual problem. (4) Never close without "have I fully sorted this for you today?" **SAY:** "This week, one thing: on every complaint, before you touch the fix, say the emotion and the problem out loud back to them. And end every single call with the satisfaction check. QA will re-score in two weeks — I expect the critical errors at zero." **ASK:** "Drop one phrase in chat you'll use tomorrow instead of 'sorry for any inconvenience'." | 4-takeaway slide; certification checklist; chat commitment |

### The worked script (Phase 4 — rebuild of the real escalated call)

```
COMPLAINT (real, escalated — nw-3319):
"This is the third time I've called about the same billing error. Nobody's fixed it
 and I've been charged AGAIN!"

WEAK (what happened):
"That'd be the billing team really, not us… I can pass a message on but can't promise
 anything. Sorry for any inconvenience caused." → blame-shift + hollow apology + no confirm.

STRONG — LAER + 5-step ladder:

L — LISTEN:        Let them finish completely. Do not interrupt. (Controlled pacing:
                   slow, calm, lower pitch.)

A — ACKNOWLEDGE    Name the EMOTION + the SPECIFIC problem, and OWN it:
   & EMPATHISE:    "Okay — three times for the same billing error, and you've been charged
                   again on top. I'd be really frustrated too, and honestly you're right to
                   be — this should have been sorted the first time you called. I'm sorry
                   it wasn't, and I'm going to own it from here."
                   ★ (Names the feeling. Names the actual problem. Takes ownership. No
                   "another team". No "any inconvenience".)

E — EXPLORE:       "So I can fix it properly and not just patch it — can I confirm the
                   amount and the date of the latest charge, and pull up the two previous
                   tickets while we're on the call?"

R — RESPOND:       INVESTIGATE + RESOLVE (don't hand off — own the outcome):
                   "Right, I can see all three tickets and the duplicate charge. Here's what
                   I'm doing now, while we're on the line: I'm raising the refund for the
                   incorrect charge — you'll see it in 3-5 days — and I'm putting a block on
                   the billing error so it can't recur. I'm also adding a note so if it ever
                   does, whoever picks up sees the full history and doesn't make you repeat it."

   FOLLOW-UP /     "I'll email you a summary of exactly that in the next ten minutes with my
   CONFIRM:        name on it, and I'll personally check on Friday that the refund's landed."

   ★ CONFIRM       "Before I let you go — have I actually sorted this for you today, or is
   SATISFACTION:   there anything still not right?"  (NEVER close without this.)

WHY IT WORKS: Naming the emotion calms the flooded, fast-thinking brain so the fix can land.
Owning it ("I'll own it from here", "I'm doing now") removes the escalation trigger — customers
escalate when they feel passed around. A real, specific apology beats a formulaic one. The
explicit satisfaction check closes the loop and is exactly where the SERVICE RECOVERY PARADOX
kicks in — handled this well, this customer may end up MORE loyal than before the error.
```

---

## Step 4 — Handouts

### Handout 4a — LAER + 5-Step Reference Card (1 page)

```
┌──────────────────────────────────────────────────────────────────────┐
│  COMPLAINT DE-ESCALATION — LAER + THE LADDER   Northwind Cloud · Support│
│                                                                        │
│  Handle the EMOTION before the FIX. An angry customer can't hear a     │
│  solution until they feel heard.                                       │
│                                                                        │
│  ── LAER (the conversation) ──                                        │
│  L  LISTEN       Let them fully vent. Don't interrupt. Slow, calm.    │
│  A  ACKNOWLEDGE  Name the emotion + the problem. OWN it.              │
│  E  EXPLORE      Ask to understand the whole picture.                 │
│  R  RESPOND      Only now — resolve, or set a clear next step.        │
│                                                                        │
│  ── THE 5-STEP LADDER (the resolution) ──                            │
│  1 Acknowledge  2 Empathise  3 Investigate  4 Resolve  5 Follow-up   │
│                                                                        │
│  ── DE-ESCALATION PHRASES ──                                         │
│  Name it:   "I can hear how frustrating this is, especially the       │
│             third time — you're right to be annoyed."                 │
│  Own it:    "I'm going to own this from here."                        │
│  Confirm:   "Have I actually sorted this for you today, or is there   │
│             anything still not right?"                                │
│                                                                        │
│  ── THE THREE NON-NEGOTIABLES (auto-fail if broken) ──               │
│  ✗ NEVER blame another team → own it, don't disown it.               │
│  ✗ NEVER a hollow apology → name the ACTUAL problem, not "any        │
│    inconvenience".                                                    │
│  ✗ NEVER close without confirming satisfaction.                     │
│                                                                        │
│  PSYCHOLOGY: Service recovery paradox — a complaint handled          │
│  brilliantly can make a customer MORE loyal than if nothing went     │
│  wrong. Controlled pacing: your calm becomes their calm.             │
└──────────────────────────────────────────────────────────────────────┘
```

### Handout 4b — Complaint Role-Play Practice Sheet (built from the real QA failures)

> These scenarios are **your team's actual recurring QA failures this quarter** (source: `qa_critical_errors`). Practise the LAER + ladder response and write the exact words you'd use.

| # | Scenario (from real QA failures) | Trap to avoid | YOUR Acknowledge line (name emotion + problem + own it) | YOUR satisfaction check |
|---|---|---|---|---|
| 1 | Third call about the same billing error; charged again | Blame-shift to billing team | ____________________ | ____________________ |
| 2 | Customer furious a promised callback never came | Hollow "sorry for any inconvenience" | ____________________ | ____________________ |
| 3 | Service outage cost them a client-facing deadline | Rushing to a fix before acknowledging | ____________________ | ____________________ |
| 4 | Repeatedly transferred, now demanding a manager | Transferring again / "not my department" | ____________________ | ____________________ |
| 5 | Overcharged and threatening to cancel | Closing without confirming it's resolved | ____________________ | ____________________ |

**Self-check every complaint call:** Did I name the emotion before the fix? Did I own it (no blame)? Did I name the real problem (no hollow apology)? Did I end with the satisfaction check? Four ticks = a certifiable call.

---

## Step 5 — Assessment

### 5a — Observer scorecard (LAER + 5-step, from `get_qa_framework`)

> Anchored to the client's own QA rubric so trainer scoring matches `qa_heatmap` / `qa_scores`. The three non-negotiables are auto-fail regardless of other scores.

| Behaviour | Not yet (1) | Emerging (2) | Proficient (3) | Role model (4) | Score |
|---|---|---|---|---|---|
| **Listen** — lets them vent, controlled pacing | Interrupts / rushes | Waits but tense | Full space, calm pacing | Uses calm deliberately to de-escalate | ☐ |
| **Acknowledge** — names emotion + problem, owns it | Hollow apology / blame | Apologises, no ownership | Names emotion + problem, owns it | Genuine, specific; visibly calms the customer | ☐ |
| **Explore** — understands full picture | Jumps to fix | One surface question | Confirms details to fix properly | Uncovers root cause + history | ☐ |
| **Respond** — resolves / clear next step | Hand-off, no promise | Vague next step | Owns a specific resolution + timeline | Resolves live, prevents recurrence | ☐ |
| **Follow-up / confirm satisfaction** | Closes without checking | "Anything else?" only | Explicit satisfaction check | Confirms + owns a personal follow-up | ☐ |

**Overall:** 5-9 = L1 · 10-14 = L2 · 15-18 = L3 · 19-20 = L4.
**AUTO-FAIL (regardless of total):** ☐ blamed another team ☐ hollow apology, problem never named ☐ closed without confirming satisfaction.

### 5b — Certification checklist excerpt (complaint handling)

> A handler is **certified** on complaint de-escalation when an assessor observes **three consecutive live or role-play calls** meeting every criterion below with **zero auto-fails**.

**Every call must demonstrate:**
- ☐ Let the customer fully state the complaint without interruption
- ☐ Named the emotion out loud ("I can hear how frustrating this is…")
- ☐ Named the specific problem — no formulaic "sorry for any inconvenience"
- ☐ Took ownership — did **not** blame another team or system
- ☐ Explored to understand the full picture before responding
- ☐ Gave a specific resolution or a clear, owned next step with a timeline
- ☐ Confirmed satisfaction explicitly before closing ("Have I fully sorted this for you today?")
- ☐ Maintained controlled, calm pacing throughout

**Certification decision:** ☐ Certified ☐ Not yet — re-observe after coaching on: __________________

**Links to the platform:** a certified handler should score **L3+** on Acknowledge & Empathise and Confirm Satisfaction in `qa_scores`, with **zero** entries in `qa_critical_errors`. Re-check the QA heatmap two weeks post-certification to confirm the behaviour holds on live calls.

---
---

## Using these examples

- **Match the arc, not the numbers.** Every session you build should move data → diagnosis → trainer notes → handouts → assessment, in that order. The numbers, objections, and transcript lines above are illustrative — yours come from your own MCP pulls.
- **The scripts are the quality bar.** SAY: lines should be this specific and this usable. If a script could be spoken verbatim on a real call and work, it's good enough. If it's a placeholder, keep writing.
- **Always name the source.** "This is your team's #1 objection this quarter (41 calls)" or "QA flagged this in 11 calls" is what makes the room recognise the training as their own.
- **Assess the way the platform assesses.** Tie every scorecard and rubric back to `get_framework` / `get_qa_framework` so a rep's training score and their live platform score speak the same language.
- **Play before pedagogy in practice.** Bells, forfeits, restarts, friendly competition, a shared phrase bank — mild stakes and laughter lower the fear of practising an unfamiliar move out loud, which is the real barrier every time.
