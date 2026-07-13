# Framework Library

Established, tried and tested sales and CS frameworks, organised by topic.

---

## Platform Default Frameworks & Alias Map

DemandIntel scores reps against a fixed set of **default frameworks**. The platform's own MCP data (`get_framework`, `list_frameworks`, the QA frameworks behind `qa_scores` / `get_qa_framework`, and the generated "LAER cheat sheet" from `generate_playbook`) refers to these by their **standard acronym**. This skill teaches them under **descriptive names** so the psychology lands, but every entry also carries the acronym so a trainer can reconcile a coaching session with what the platform reports.

Use this table to translate between the two. When building a session for a specific rep, pull their actual scored framework from `get_framework` and teach to the levels it defines — do not assume the generic version below matches a client's customised rubric.

| Standard name (acronym) | DemandIntel descriptive name | Scope | Primary roles | Primary call types |
|---|---|---|---|---|
| MEDDIC / MEDDPICC | Enterprise Deal Map / Extended Enterprise Map | Enterprise & procurement-heavy qualification | AE, BDM, Sales Manager, Sales Engineer | discovery, demo, negotiation, closing |
| BANT | Foundational Fit Check | Fast four-point qualification | Outbound BDR, Inbound SDR, appointment setter, AE, BDM | cold outreach, inbound qual, discovery, demo booking |
| SPICED | Recurring Revenue Fit Check | Subscription discovery & lifecycle | AE, CSM, renewals manager, account manager | discovery, QBR, renewal, upsell |
| GPCT / GPCTBA&C&I | Goal-Led Discovery Map | Inbound & goal-led qualification | AE, BDM, Inbound SDR | discovery, inbound qual, demo |
| CHAMP | Challenge-First Fit Check | Buyer-led qualification (challenges before money) | Outbound BDR, AE, BDM | cold outreach, discovery |
| ANUM | Authority-First Qualifier | Outbound qualification (authority first) | Outbound BDR, AE | cold outreach, discovery |
| BEBEDC | Evaluation & Competition Map | Mid-market/enterprise discovery to negotiation | AE, BDM | discovery, demo, negotiation |
| SPIN | Situation, Problem, Impact, Value Questioning Model | Question-led discovery | AE, BDM, Sales Engineer | discovery, demo |
| Sandler Pain Funnel | Pain Funnel | Pain-led discovery funnel | AE, BDM | discovery, negotiation |
| Negotiation hygiene | Trade, Never Concede | Negotiation hygiene & next-step discipline | AE, BDM, Sales Manager | negotiation, closing |
| Cold-outreach opener discipline | Permission-Based Opener Discipline | Cold opener control | Outbound BDR, appointment setter | cold outreach |
| Customer Onboarding / Success Plan | Success Plan & Time-to-Value Model | Onboarding & activation | CSM, onboarding specialist, account manager | customer onboarding, customer check-in |
| QBR / Business Review | Business Review Structure | Value review & expansion setup | CSM, account manager, renewals manager, AE | QBR / business review, renewal, upsell |
| Renewal & Retention | Renewal & Retention Model | Churn prevention & renewal | CSM, renewals manager, account manager | renewal, QBR / business review |
| Voice of Customer / Feedback | Voice of Customer Model | Feedback capture & loop-closing | CSM, account manager, onboarding specialist, support agent | feedback call, customer check-in |
| LAER | Listen, Acknowledge, Explore, Respond | Service recovery & objection handling | Customer support agent, technical support specialist, complaints handler, CSM | support call, complaint call, escalation call, customer check-in |
| 5-step Complaints Handling | Complaint Resolution Ladder | Complaint resolution | Complaints handler, customer support agent, technical support specialist | complaint call, escalation call |
| Support Resolution Quality | First-Contact Resolution Model | Support call quality | Customer support agent, technical support specialist | support call, escalation call |

**Grounding note:** whenever you build a session for a named client or rep, populate the objection examples from `top_objections`, teach the framework to the levels returned by `get_framework`, and cross-check the descriptive name above against `list_frameworks` / `list_qa_frameworks` so the language you coach matches the language the rep is scored in.

---

## Objection Handling Frameworks

### The LEARN Framework

| Step | Action | Psychology |
|------|--------|------------|
| **L** - Listen | Pause 1.5-2 seconds. Let them finish. | Prevents your own reactive response |
| **E** - Empathise | "I completely understand..." | Lowers their defensive wall |
| **A** - Ask | "What makes you say that?" | Activates considered thinking, diagnoses root cause |
| **R** - Reframe | Address the real concern | Based on what ASK revealed |
| **N** - Next Step | "Based on that, would it make sense to..." | Maintains momentum |

### Root Cause Diagnostic

Every objection stems from one of three causes:

1. **BIAS** - "Don't sell to me"
   - Automatic defence mechanism
   - Nothing to do with you or your product
   - Examples: "Send me an email", "We've allocated budget"
   - Psychology: protecting time and mental energy

2. **CONFUSION** - "I don't understand the value"
   - Cannot see how this helps them
   - Benefits unclear or not relevant
   - Examples: "I need to think about it", "Talk to colleagues"
   - Psychology: uncertainty about making a mistake

3. **UNCERTAINTY** - "I'm not sure this will work"
   - They see value but fear risk
   - Worried about what could go wrong
   - Examples: "Depends on my boss", "Not sure I can commit"
   - Psychology: fear of making the wrong decision

### Five Step Resolution Model

| Step | Action | Key Phrase |
|------|--------|------------|
| 1. Listen | Pause. Don't interrupt. Note what's said and unsaid. | (Silence) |
| 2. Rephrase | Reframe to the real underlying issue | "So what you're really asking is..." |
| 3. Isolate | Check for other concerns | "And is this the only thing stopping you?" |
| 4. Answer | Address the real concern with evidence/logic | (Tailored to root cause) |
| 5. Close | Agree on next action | "So shall we..." |

**Key insight:** most salespeople skip steps 2 and 3 and jump straight to answering. This addresses symptoms, not causes.

### Objection Category Model

1. **Timing Objections**, time is the hardest ask
2. **Deflection Objections**, irrelevant topic raised to end the conversation
3. **Process Objections**, small procedural steps in the buying journey
4. **Decision Objections**, final commitment stage concerns

### Time Buying Techniques

Pre-set lines used to buy thinking time before responding:
- "That's exactly why I called..."
- "This one's totally on me..."
- "I hear you, and that's fair..."

### Flow Not Fight Technique

Don't fight an objection, flow with it:
- Acknowledge the objection
- Ask a clarifying question
- Return smoothly to the original point

### Reaction vs Objection Distinction

**Reaction:** automatic, reflexive, not thought through
- Happens in the first 30 seconds of a cold call
- Not based on logic
- Examples: "Not interested", "We're all set"
- Response: pattern interrupt, don't argue

**Objection:** considered, specific, based on something
- Happens after you've engaged
- Has a logical basis
- Examples: "We tried something like this and it didn't work"
- Response: diagnose and address

---

## Full-Cycle Qualification Model

A seven-stage model for running an entire sales cycle end to end, particularly effective for one-to-one, transactional, or mid-market deals.

1. **Bonding and Rapport**, open, honest dialogue that establishes the seller as an impartial advisor rather than a pitching vendor
2. **Up-Front Agreement**, a short verbal agreement at the start of any call or meeting that sets out what will happen, how long it will take, and what a fair outcome looks like for both sides. Removes ambiguity and prevents the meeting drifting
3. **Pain Discovery**, layered questioning that moves from surface-level issues down to the business and personal impact behind them
4. **Budget**, a direct, non-awkward conversation about ability and willingness to invest, held once value is established rather than at the start
5. **Decision Process**, mapping who is involved, how they decide, and on what timeline
6. **Proposal**, a solution presented only once the first five stages are complete, tailored to what was actually uncovered
7. **Post-Decision**, confirming implementation and ongoing support, regardless of a yes or no outcome

**Key technique, Reversing:** when a prospect asks a question, respond with a related question rather than an immediate answer. For example, if asked "What does it cost?", reply "That's a fair question. Costs vary depending on what you need, what outcome are you hoping to achieve?" This keeps the prospect talking and prevents premature assumptions.

**Key principle:** each stage should be substantially complete before moving to the next. Skipping ahead (for example, proposing a solution before budget and decision process are understood) is the most common cause of deals stalling at "I need to think about it."

---

## Stakeholder Mapping Framework

For complex, multi-stakeholder B2B deals with long sales cycles, map the buying committee before investing heavily in any one conversation.

**Four buying roles to identify in every deal:**

| Role | What they care about | Risk if ignored |
|------|----------------------|------------------|
| **Economic Buyer** | Final ROI, budget authority | Deal stalls at approval stage |
| **User Buyer** | Day-to-day workflow fit | Low adoption after purchase |
| **Technical Buyer** | Compliance, security, integration, can veto but not approve | Deal blocked in technical review |
| **Coach** | An internal advocate who wants you to win and will guide your strategy, earned rather than assigned | Strategy is guesswork without one |

**Two-tier planning system:**
- **Deal-level plan**, a living document mapping every stakeholder, their attitude, red flags, and the overall win strategy for the opportunity
- **Meeting-level plan**, a lightweight plan for each individual conversation: what you already know, what you need to find out, and what specific commitment you want by the end of the meeting

**Red Flags vs Strengths:** actively track gaps in stakeholder coverage, unclear decision criteria, or lukewarm sponsors as red flags, and address them before they sink the deal, rather than only reviewing them in a post-mortem.

**Win-Results distinction:** separate the organisational result (cost savings, productivity, revenue growth) from the personal win (what the individual stakeholder personally gains, such as recognition, reduced risk, or an easier quarter). Deals close faster when both are addressed for each stakeholder.

**Buyer attitude types:** stakeholders typically show one of four attitudes toward change, and each needs a different message:
- **Growth-oriented**, wants more, message around upside and opportunity
- **Trouble-oriented**, acknowledges a problem, message around fixing the specific pain
- **Complacent**, satisfied with the status quo, needs a credible trigger before they will engage at all
- **Overconfident**, does not see risk in the status quo, needs it demonstrated, not asserted

---

## Insight-Led Reframe Script

For markets where buyers are overwhelmed with options and need to be taught something new about their own business, rather than simply asked questions.

**Six-part structure:**

1. **The Warmer**, open with what you are seeing across similar organisations, using benchmark data to build credibility. "We've worked with a number of companies like yours, and three challenges keep coming up. Does that match what you're seeing, or would you add something?"
2. **The Reframe**, connect those challenges to a bigger problem or opportunity than the buyer had previously considered. Success looks like: "I hadn't thought about it that way."
3. **Rational Drowning**, lay out the business case for why the reframe matters, using the buyer's own numbers wherever possible
4. **Emotional Impact**, make the cost of inaction personal and felt, not just financial
5. **A New Way**, introduce the new approach or way of thinking that resolves the reframed problem
6. **Your Solution**, only now, connect that new way to your specific offer

**Underlying principle:** the goal is constructive tension, not comfort. Reps who only validate what a buyer already believes rarely differentiate. Reps who teach, tailor the message to the specific stakeholder, and take control of the pace and agenda of the sale consistently outperform reps who default to relationship-building alone.

**Best suited for:** disruptive or unfamiliar products, crowded markets, and buyers who don't yet know they have a problem.
**Best avoided for:** highly transactional sales, or buyers who already have a clear, correct diagnosis and just need a quote.

---

## Indecision Diagnostic

Distinct from an objection, indecision shows up as stalling, delay, and repeated requests for "just one more" piece of information, without a clear stated reason. A large proportion of lost deals are lost to no decision, not to a competitor.

**Four-part response:**

1. **Assess how indecisive the buyer actually is.** Ask directly: "On a scale of confident to still weighing it up, where are you?" Indecisive buyers rarely announce themselves, so this has to be actively surfaced.
2. **Recommend one clear path rather than a menu of options.** Too much choice increases anxiety rather than confidence. Shift from "what would you like to do?" to "here's what I'd recommend, and why."
3. **Contain the research spiral.** More research, demos, and reference calls feel like progress to an indecisive buyer but rarely change the outcome. Politely set a boundary: "Would one more call actually change your decision, or are we at the point of deciding either way?"
4. **Remove the risk of a wrong choice.** Since indecisive buyers are driven more by fear of a bad outcome than desire for a good one, offer a phased start, a defined off-ramp, or a success guarantee rather than more persuasion.

**Key principle:** once purchase intent exists, most stalled buyers are no longer weighing success against success, they are weighing the risk of failure in choosing you against the risk of failure in doing nothing. Address the fear directly rather than adding more reasons to say yes.

---

## Consultative Conversation Model

A three-part structure for leading a single sales conversation, useful for coaching call quality regardless of which qualification framework is used.

1. **Connect**, open with genuine curiosity about the buyer's world, not small talk and not an immediate pitch
2. **Convince**, use sharp, incisive questions to surface needs the buyer may not have fully articulated even to themselves, then reflect back the value of solving them
3. **Collaborate**, involve the buyer directly in shaping the solution rather than presenting a finished pitch. Buyers who feel ownership over a solution are far more likely to advocate for it internally

---

## Discovery Frameworks

### Current to Future State Gap Model

1. Understand their **Current State** (problems, impact)
2. Define their **Future State** (desired outcome)
3. Quantify the **Gap** (cost of inaction)
4. Position your solution as the **Bridge**

**Key insight:** every objection should be held up against the customer's future state. Get them to articulate why the objection matters against their own goals.

**Current State Questions:**
- "What's happening now that prompted this conversation?"
- "How long has this been an issue?"
- "What have you tried so far?"
- "What's the impact on [revenue/team/customers]?"

**Future State Questions:**
- "What does good look like in 12 months?"
- "If this problem disappeared tomorrow, what would change?"
- "What's the first thing you'd notice if this was fixed?"

### Situation, Problem, Impact, Value Questioning Model (SPIN)

Standard acronym: **SPIN** (Situation, Problem, Implication, Need-payoff). The platform's `get_framework` and QA rubrics refer to this as SPIN. A four stage questioning sequence for complex B2B discovery:

- **Situation** questions, background context
- **Problem** questions, difficulties and dissatisfactions
- **Impact / Implication** questions, effects and consequences of the problem
- **Value / Need-payoff** questions, what solving it would be worth in the buyer's own words

**Required behaviours (what good looks like):**
- Keep **Situation** questions short and researched — asking what you could have found beforehand burns credibility.
- Spend the most time on **Implication** questions; this is where the buyer talks themselves into urgency.
- Let the buyer articulate the **Need-payoff** ("so if we fixed this, you'd...") rather than asserting the value yourself. Buyers believe their own conclusions, not yours.

**Psychology:** implication questions raise the buyer's felt cost of the status quo before any solution is mentioned, so the value question lands against a problem they now own.

**Modern application:** effective at surfacing need but can feel interrogative if run rigidly. Blend with conversational discovery.

**Best fit:** AE, BDM, Sales Engineer on discovery and demo calls.

### Qualification Frameworks

Select the depth of qualification based on deal complexity, using a tiered approach:

**Tier 1, Foundational Fit Check** (simple, transactional deals): confirm four basics before investing further time, what the buyer can spend, who can approve it, what problem it solves, and when they need it resolved by.

**Tier 2, Enterprise Deal Map** (complex, multi stakeholder deals): build a fuller picture covering the measurable outcome the buyer is targeting, who controls the budget, what criteria they will judge options against, what their internal approval process looks like, what pain is driving the initiative, and who internally is championing it on your behalf.

**Tier 3, Extended Enterprise Map** (regulated or procurement-heavy deals): everything in Tier 2, plus the formal paperwork and procurement route the deal must pass through, and a clear read on what else the buyer is comparing you against.

**Tier 4, Recurring Revenue Fit Check** (subscription and high velocity SaaS): built around five questions, what is true about the customer's situation right now, what is painful about it, what that pain costs them, what event creates urgency to act by a certain date, and how and when they will actually decide.

### Before/After Value Narrative

- **Before/After:** what's their world before and after your solution?
- **Required Capabilities:** what must a solution do?
- **Positive Business Outcomes:** measurable results
- **Proof Points:** evidence from similar customers

---

## Qualification & Fit Frameworks (Default Framework Set)

These are the acronym-named qualification frameworks the platform scores reps against, beyond the tiered BANT/MEDDIC/MEDDPICC/SPICED models above. Teach each to the levels defined in the client's own `get_framework`, and populate live examples from real calls via `list_calls` / `get_call`.

### Goal-Led Discovery Map (GPCT / GPCTBA&C&I)

An inbound and goal-led qualification model. Where BANT starts from budget, this starts from the buyer's **goals** and works outward, which suits warm inbound conversations where the buyer already has intent.

| Letter | Element | What to uncover |
|---|---|---|
| **G** | Goals | The quantified business goal the buyer is trying to hit |
| **P** | Plans | The plan they currently have to reach it, and whether it is working |
| **C** | Challenges | What is getting in the way — the challenges only you may be able to solve |
| **T** | Timeline | When the goal must be achieved by, which sets real urgency |
| **B** | Budget | (Extended) money available or reallocatable to the goal |
| **A** | Authority | (Extended) who owns the decision and who influences it |
| **C** | Consequences | (Extended) what happens to the business if the goal is missed |
| **I** | Implications | (Extended) what happens for the buyer personally if the goal is hit |

**Required behaviours:** anchor everything to the buyer's stated **goal**, not your product; test whether their current **plan** is credible before pitching; make **consequences** and **implications** explicit so the timeline has teeth rather than being an arbitrary date.

**Psychology:** starting from the buyer's own goal frames you as a partner helping them win, not a vendor qualifying them — which keeps a warm inbound lead in slow, deliberate thinking rather than triggering sales resistance.

**Best fit:** AE, BDM, Inbound SDR on discovery, inbound qualification and demo calls.

### Challenge-First Fit Check (CHAMP)

A buyer-led reordering of BANT that deliberately puts **challenges before money**, so the conversation earns the right to discuss budget rather than opening on it.

| Letter | Element | What to uncover |
|---|---|---|
| **CH** | Challenges | The problems the buyer needs solved — lead here, always |
| **A** | Authority | Who is involved in deciding, and how |
| **M** | Money | Ability and willingness to invest, discussed only once a challenge is real |
| **P** | Prioritisation | Where solving this ranks against everything else on their plate |

**Required behaviours:** open on **challenges** and stay there until a genuine, costed problem is on the table; treat **prioritisation** as a first-class qualifier — a real challenge that is priority number ten will not close this quarter.

**Forbidden behaviours:** do not ask about budget before a challenge is established; do not mistake a stated challenge for a prioritised one.

**Psychology:** buyers defend their budget reflexively (fast thinking), but discuss challenges openly once they feel heard — CHAMP sequences the conversation to work with that, not against it.

**Best fit:** Outbound BDR, AE, BDM on cold outreach and discovery.

### Authority-First Qualifier (ANUM)

An outbound-oriented reorder of BANT that leads with **authority**, so reps spend time on people who can actually act rather than qualifying need with someone powerless to buy.

| Letter | Element | What to uncover |
|---|---|---|
| **A** | Authority | Are you speaking to (or one step from) the decision-maker? |
| **N** | Need | Is there a real, ideally quantified, need |
| **U** | Urgency | Is there an event or deadline forcing action |
| **M** | Money | Is there budget or the ability to find it |

**Required behaviours:** establish **authority** early and politely ("who else would weigh in on a decision like this?"); if you are not with the decision-maker, secure a warm multi-thread to them rather than continuing to sell to a non-buyer.

**Psychology:** leading on authority protects the rep's scarcest resource — time — and mirrors how confident buyers expect to be handled.

**Best fit:** Outbound BDR, AE on cold outreach and early discovery. Use ANUM for high-volume outbound; prefer CHAMP or GPCT when the relationship is warmer and you can afford to lead with the problem.

### Evaluation & Competition Map (BEBEDC)

A discovery-to-negotiation model for mid-market and enterprise deals that makes the **evaluation mechanics and the competitive field** explicit, so nothing surprises you late in the cycle.

| Letter | Element | What to uncover |
|---|---|---|
| **B** | Budget | The money allocated or reallocatable to this |
| **E** | Evaluators | Everyone who will assess the solution, technical and business |
| **B** | Buyer | The economic buyer who ultimately signs |
| **E** | Engagement | How engaged each stakeholder is, and your access to them |
| **D** | Decision criteria | The explicit criteria the choice will be judged against |
| **C** | Competition | What else the buyer is evaluating, including "do nothing" |

**Required behaviours:** name every **evaluator** and rate their **engagement** honestly; surface **decision criteria** in the buyer's words and, where possible, help shape them; treat **competition** as always present — if the buyer names no competitor, the competitor is the status quo.

**Psychology:** buyers reveal criteria and rivals when they trust you are helping them decide well rather than trying to win; frame these questions as de-risking their decision.

**Best fit:** AE, BDM on discovery, demo and negotiation calls. Pairs naturally with the Stakeholder Mapping Framework above.

### Pain Funnel (Sandler)

A layered, pain-led discovery funnel — the questioning engine inside the Full-Cycle Qualification Model's Pain Discovery stage, teachable in its own right. Each rung moves the buyer from a surface complaint to the quantified business and personal cost that justifies action.

| Rung | Question intent | Example |
|---|---|---|
| 1. Open it up | "Tell me more about that." | Surfaces the raw issue |
| 2. Get specific | "Can you be more specific? Give me an example." | Turns a vague gripe into a concrete case |
| 3. Time it | "How long has this been going on?" | Establishes that it is chronic, not a one-off |
| 4. Prior attempts | "What have you tried to fix it?" | Shows what has already failed |
| 5. Why it failed | "And why didn't that work?" | Removes the easy alternatives to you |
| 6. Cost of it | "What has this cost you — in money, time, or otherwise?" | Quantifies the business impact |
| 7. Make it personal | "How does that affect you personally?" | Reaches the personal stake behind the business pain |
| 8. Cost of inaction | "What happens if you do nothing?" | Sets loss aversion working for you |

**Required behaviours:** move down the funnel patiently, one rung at a time; stay quiet after each question and let the buyer fill the silence; reach the **personal** and **do-nothing** rungs — a business case with no personal stake rarely creates urgency.

**Forbidden behaviours:** do not jump to your solution the moment the first pain appears; do not soften or answer the "what happens if you do nothing?" question for them.

**Psychology:** the funnel deliberately deepens felt loss before any remedy is offered, so the buyer is deciding against the pain of the status quo, not merely weighing a nice-to-have.

**Best fit:** AE, BDM on discovery and, to reopen leverage, negotiation calls.

---

## Cold Calling Frameworks

### Permission Based Opener

"Hey [Name], it's [You] from [Company]. I know I'm calling out of the blue. Got a minute for me to share why I called, and then you can tell me if it makes sense to keep talking?"

Substantially more effective than an open ended "How are you?" opener, per large scale call analysis.

### The 27 Second Opener

**Structure:**
1. **Pattern interrupt** (5 sec): "Hey, I know this is random..."
2. **Reason for call** (10 sec): "The reason I'm calling..."
3. **Value statement** (7 sec): "We help companies like yours..."
4. **Permission** (5 sec): "Would you be open to..."

### Empathise, Validate, Offer (EVO) Framework

- **E**mpathise, acknowledge what the prospect said
- **V**alidate, mention others feel the same
- **O**ffer, offer value to continue

**Example:**
- Prospect: "We're not interested"
- E: "I totally get it, cold calls are the worst"
- V: "Most people I talk to say the same thing initially"
- O: "Would it be worth 30 seconds to see if this is even relevant?"

### Situational Awareness Technique

- Have 6+ different responses prepared for each predicted objection
- Response varies based on specific context
- Challenge objections with a rapid sequence of questions
- Tone: direct, confident, controlled

### Permission-Based Opener Discipline

Standard name: **cold-outreach opener discipline** — the behaviour the platform scores on cold calls. The Permission-Based Opener and 27 Second Opener above are the tactics; this is the discipline that ties them into a scored, repeatable standard.

**Required behaviours (what good looks like):**
1. **Permission opener** — ask for a moment before pitching, so the buyer grants attention rather than defending against it.
2. **Sharp reason for the call** — one specific, relevant reason the buyer would care about, not a generic value statement.
3. **Pattern-interrupt on the brush-off** — when the reflexive "not interested / send me an email" lands, interrupt the pattern (acknowledge, then a short, disarming question) instead of arguing or pitching harder.
4. **Close to a calendar-booked next step** — the call's single goal is a specific time on the calendar, not a vague "I'll follow up".

**Forbidden behaviours:** do not open with "How are you today?"; do not push past a genuine, considered objection with volume; do not end without either a booked next step or a clear, mutual no.

**Psychology:** a permission opener and pattern-interrupt both work by breaking the buyer's automatic fast-thinking script long enough to engage deliberate thinking — see Reaction vs Objection above. Ground the predicted brush-offs from real data via `top_objections`.

**Best fit:** Outbound BDR and appointment setter on cold outreach.

---

## Negotiation and Influence Frameworks

### Advanced Influence Techniques

| Technique | How | When |
|-----------|-----|------|
| **Tactical Empathy** | Understand their emotions first | Always |
| **Mirroring** | Repeat last 1-3 words in questioning tone | To get them to elaborate |
| **Labelling** | "It seems like you're concerned about..." | To defuse negative emotions |
| **Accusation Audit** | List negatives they might think about you upfront | Opening complex conversations |
| **Calibrated Questions** | "How" and "What" questions that start with them | To make them solve your problem |
| **Controlled Vocal Pacing** | Slow, calm, downward inflection | To project confidence and calm |

**Key insight:** "No" makes people feel safe. "Yes" feels like a trap. Ask questions designed to get "No."

### Stakeholder Negotiation Model

- Identify stakeholder motivations
- Negotiate from strength (alternatives)
- Know your walk away point
- Explore creative solutions
- Document everything

### Trade, Never Concede (Negotiation Hygiene)

Standard name: **negotiation hygiene** — the behaviour the platform scores on negotiation and closing calls. Three non-negotiable habits that separate a disciplined negotiator from a discounter.

| Principle | What good looks like | Why |
|---|---|---|
| **Trade, never concede** | Every give is matched by a get ("I can do that if we move to a two-year term / add the second team / sign by Friday"). Nothing is given away free. | A free concession trains the buyer to expect more and quietly signals your price was inflated |
| **Anchor on agreed value** | Return every price challenge to the value the buyer already agreed to earlier in the cycle, in their own numbers, before discussing the number. | Reframes the conversation from cost to return, and uses their own commitment against the discount reflex |
| **Confirm written next steps with named owners** | Close every negotiation with who does what by when, in writing, with a named owner on both sides. | Verbal agreements decay; a written, owned next step is the only reliable measure of real commitment |

**Required behaviours:** surface the buyer's underlying interest before trading; hold your walk-away point; document the agreed next steps and owners while still on the call.

**Forbidden behaviours:** do not drop price to "keep things moving"; do not concede a term without naming what you get in return; do not leave a negotiation without a written, owned next step.

**Psychology:** loss aversion cuts both ways — a buyer who has to *give* something to get a discount values the outcome more and pushes less. Concessions given freely reduce perceived value; concessions traded increase it.

**Best fit:** AE, BDM, Sales Manager on negotiation and closing calls.

---

## Closing Frameworks

### The Two Question Close

1. "Does it make sense for us to [next step]?"
2. If no: "What would you recommend as a next step?"

**Key:** non-pushy, collaborative, high acceptance rate in practice.

### Commitment Culture Principle

- Every meeting should end with a commitment
- If they won't commit, understand why
- Concerns are opportunities, not blockers

### Commitment Gaining Questions

**Soft:**
- "Where do you see this going from here?"
- "What would need to happen for this to move forward?"

**Direct:**
- "Based on what we've discussed, I'd recommend [X]. Does that work for you?"
- "Shall we lock in [next step]?"

---

## Psychology Foundations

### Fast Thinking vs Slow Thinking

**Use in every training to explain why techniques work:**

| Fast (Automatic) | Slow (Deliberate) |
|-----------------|-----------------|
| Automatic, instant | Deliberate, analytical |
| Emotional, reactive | Rational, considered |
| Protects from threats | Makes real decisions |
| Says NO first | Must be consciously activated |

**Training application:** when buyers object, they're in fast thinking mode. Your job is to move them into slow thinking mode where they can actually think it through.

### Loss Aversion

People fear loss more than they value gain (roughly 2:1 ratio).

**Application:** frame around cost of inaction, not just benefits of action.
- "What would a 3 month delay cost you?"
- "What happens if you don't solve this?"
- "What's at risk if this continues?"

### Social Proof

People look to others to guide decisions, especially in uncertainty.

**Application:** use "Most people..." or share similar customer stories.
- "Most teams in your situation..."
- "When [similar company] faced this..."
- "What we typically see is..."

### Commitment and Consistency

Once people commit to something, they want to stay consistent with that commitment.

**Application:** get small commitments early.
- "Would you agree that [problem] is worth solving?"
- "If we could show you [outcome], would that be valuable?"

### The Peak End Rule

People judge experiences by the peak moment and the ending, not the average.

**Application:** nail your opening and closing. The middle matters less than you think.

---

## Customer Success Frameworks

### Extended Customer Journey Model

Extend the traditional acquisition funnel to cover the full recurring revenue lifecycle, visualised as two funnels joined at a single point of handoff:

- **Left side, Acquisition:** awareness, education, selection, closed-won
- **Centre, Handoff:** onboarding and first value delivery, the single most important and most neglected stage
- **Right side, Retention and Expansion:** adoption, renewal, expansion

**Key principle:** recurring revenue businesses only become profitable well after the initial sale, once enough renewal cycles have passed to recover the cost of acquiring the customer. This makes the right side of the journey, not just the close, the primary driver of business value. Treat onboarding and adoption with the same rigour as the sales process itself.

### Recurring Discovery Framework

The same qualification thinking used to win a deal applies throughout the customer lifecycle, not just at the point of sale. At any stage, re-establish four things: what is currently true about the customer's world, what is difficult or costly about it in business terms, what deadline or event creates urgency to act, and how and when they will actually decide on a next step, whether that's a first purchase, a renewal, or an expansion.

**Application:** run this at onboarding to reconfirm the original business case, at adoption checkpoints to catch drift, and ahead of renewal to rebuild urgency rather than assuming it still exists.

### Value Realisation Tracking

Map stated outcomes at point of sale to measurable, time bound proof points post onboarding. Revisit these at every check in, and use them as the backbone of every business review, since customers renew based on outcomes achieved, not features used.

### Success Plan & Time-to-Value Model (Customer Onboarding)

Standard name: **Customer Onboarding / Success Plan** — the framework the platform scores on onboarding and check-in calls. Onboarding is the handoff stage in the Extended Customer Journey Model and the single biggest predictor of renewal, so it is run as a plan, not a setup task.

| Step | Action | What good looks like |
|---|---|---|
| 1. Define success in writing | Agree, in the customer's words, what "success" means for this account | A written, shared definition both sides have accepted — not a vague aspiration |
| 2. Set milestones + owners, both sides | Break the path to success into milestones, each with a named owner on the customer side *and* your side | No orphan milestones; the customer is accountable for their part |
| 3. State time-to-value explicitly | Commit to the date/first milestone by which the customer will feel first value | A specific, agreed time-to-value, not "over the coming months" |
| 4. Book the next check-in | Leave the call with the next check-in already on the calendar | A booked date, tied to a milestone, before the call ends |

**Required behaviours:** get the **definition of success in writing**; assign owners **on both sides** for every milestone; make **time-to-value explicit and dated**; **book the next check-in** before the call ends.

**Forbidden behaviours:** do not treat onboarding as a technical setup checklist; do not leave success undefined or unowned; do not end without the next touch scheduled.

**Psychology:** a customer who co-authors and co-owns the success plan feels ownership over the outcome and is far more likely to drive adoption internally — the same ownership principle that makes the Collaborate step of the Consultative Conversation Model work.

**Best fit:** CSM, onboarding specialist, account manager on customer onboarding and customer check-in calls.

### Customer Health Scoring Model

A composite, weighted score used to predict renewal, expansion, or churn risk, rather than simply reporting what has already happened.

**Design principles:**
- Build from correlation, not intuition. Pull a sample of churned and renewed/expanded accounts and test which signals actually predicted the outcome before assigning weights
- Weight leading indicators (usage trend, engagement frequency, executive engagement) more heavily than lagging indicators (last quarter's usage, a single old survey score)
- Segment the model. What counts as healthy usage for an enterprise account with a slow, methodical rollout looks unhealthy for a fast-moving SMB account, so a single universal threshold misleads
- Recalibrate on a fixed cadence (quarterly is common) by testing the score against actual renewal and churn outcomes, and adjusting weights where it was wrong

**Common starting weighting for an enterprise segment:** roughly a quarter product usage, a third relationship and sentiment pulse, a fifth executive engagement, the remainder business outcomes achieved and support health. Adjust based on your own correlation analysis rather than adopting this as fixed.

**Qualitative signals that quantitative data misses:** a champion who stops asking forward-looking questions, a business review where energy shifts from future-focused to complacent, an internal advocate who quietly reduces engagement, and renewal language that turns inertial ("let's just keep it the same"). These often lead a usage drop by 30 to 90 days and are worth training CSMs to listen for directly.

**Operational test:** a health score only has value if crossing a risk threshold automatically triggers a defined action. If the honest answer to "what happens when the score drops?" is "a CSM might notice it," the score is a reporting metric, not a working system.

### Business Review Structure (QBR / EBR)

Standard names: **QBR** (Quarterly Business Review) / **EBR** (Executive Business Review) — the framework the platform scores on QBR, renewal and upsell calls. A recurring structure for reviewing value with a customer, run quarterly or as cadence dictates.

**Required ordering — value delivered → roadmap → risks → expansion, in that order:**

1. **Value delivered** — lead with outcomes achieved, in the customer's own business terms and metrics, not usage statistics. Open on the value they have already received.
2. **Roadmap** — recap the original goals and success criteria, then realign on what is next: the joint success plan with milestones and owners on both sides.
3. **Risks** — surface and address risks openly, rather than only presenting good news.
4. **Expansion** — only now, and only tied to outcomes: raise growth where the delivered value and the roadmap make a larger footprint the obvious next step.

**Required behaviours:** open on value, never on a feature tour; keep every metric in the customer's language; **tie any expansion ask to a demonstrated outcome** ("you've hit X with one team — here's what the same for three teams looks like"), never to a calendar quota.

**Forbidden behaviours:** do not present a usage dashboard as if it were value; do not raise expansion before value and risks have been dealt with.

**Key principle:** a business review that only reports usage dashboards reads as a vendor check-in. A business review that reconnects activity to the customer's own stated business outcomes reads as a strategic partnership, and is what actually drives renewal and expansion conversations. Ground the outcome metrics in `get_report_findings` / `value realisation` data where available.

**Best fit:** CSM, account manager, renewals manager, AE on QBR, renewal and upsell calls.

### Expansion Timing Model

Identify usage and outcome triggers (e.g. seat growth, feature adoption thresholds, repeated successful outcomes) that signal readiness for an upsell or cross-sell conversation, rather than running expansion on a fixed calendar cadence.

### Renewal & Retention Model

Standard name: **Renewal & Retention** — the framework the platform scores on renewal and QBR calls. Renewal is won in the quarters before the renewal date, not in the renewal conversation itself.

| Step | Action | What good looks like |
|---|---|---|
| 1. Pre-empt churn signals | Watch the health score and qualitative signals (see Customer Health Scoring Model) and act 30-90 days ahead | Risk addressed before the customer raises it, not after |
| 2. Reaffirm ROI with data | Rebuild the business case using **usage and outcome data**, in the customer's own terms | A concrete, evidenced ROI story, not a reminder that the contract is up |
| 3. Identify expansion alongside renewal | Look for the natural growth the delivered value opens up, and raise it *with* the renewal | Expansion tied to a demonstrated outcome, not bolted on |
| 4. Protect price | If asked to discount, trade for something (term, volume, case study, reference) — never concede | The list price held, or a give exchanged for a get |

**Required behaviours:** **pre-empt churn signals** rather than reacting; **reaffirm ROI with usage + outcome data**; **identify expansion alongside the renewal**; **never discount without a trade** (see Trade, Never Concede).

**Forbidden behaviours:** do not treat renewal as an administrative rollover; do not discount to secure a renewal without trading for value; do not wait for the customer to signal risk before engaging.

**Psychology:** loss aversion works for retention — a customer who can see, in their own numbers, the value they would lose by leaving is far harder to churn than one shown only what they have spent.

**Best fit:** CSM, renewals manager, account manager on renewal and QBR calls.

### Voice of Customer Model (Feedback)

Standard name: **Voice of Customer / Feedback** — the framework the platform scores on feedback and check-in calls. A structured way to turn a feedback conversation into insight and trust, rather than a list of feature requests.

| Step | Action | What good looks like |
|---|---|---|
| 1. Listen | Let the customer talk; do not defend or explain | Genuine airtime, minimal interruption |
| 2. Capture verbatim | Record what they said in their own words | Their phrasing preserved, not paraphrased into your language |
| 3. Dig to the job-to-be-done | Get past the requested feature to the underlying job they are trying to do | The problem behind the ask, not just the ask |
| 4. Close the loop | Commit to a specific action and follow up when it is done | A named, committed action and a closed loop back to the customer |

**Required behaviours:** **listen** without defending; **capture verbatim**; **dig past the feature request to the job-to-be-done**; **close the loop with a committed action**.

**Forbidden behaviours:** do not defend the product mid-feedback; do not take a feature request at face value without finding the underlying job; do not leave feedback un-actioned or unacknowledged.

**Psychology:** customers who feel genuinely heard — and who see a loop actually closed — become advocates; a request logged and never mentioned again quietly erodes trust. Capture verbatim customer language for `most_requested_feature` and voice-of-customer reporting.

**Best fit:** CSM, account manager, onboarding specialist, customer support agent on feedback and customer check-in calls.

### Net Revenue Retention Model

The core measure of whether an existing customer base is growing or shrinking revenue, independent of new sales:

NRR = ((Starting revenue from existing customers + expansion − contraction − churn) ÷ Starting revenue from existing customers) × 100

**Training application:** use this to teach CS teams that their day-to-day work (adoption, health scoring, expansion timing, renewal conversations) rolls up directly into a single number leadership tracks closely, which helps justify the discipline of the other frameworks in this section.

---

## Support & Complaints Frameworks

The frameworks the platform scores support and complaints teams against on support, complaint, escalation and check-in calls. Ground the recurring issues and objections from real data via `top_objections`, `qa_critical_errors` and `list_qa_topics`.

### Listen, Acknowledge, Explore, Respond (LAER)

Standard acronym: **LAER** — the service-recovery and objection-handling default for support and CS, and the framework `generate_playbook` produces the "LAER cheat sheet" from. It is the calmer, service-side sibling of the LEARN objection model: absorb the emotion first, understand fully, and only then respond.

| Step | Action | Psychology |
|---|---|---|
| **L** — Listen | Let the customer say everything, uninterrupted | A customer who feels cut off escalates; one who feels heard de-escalates |
| **A** — Acknowledge | Name and validate what they feel and what happened | Acknowledgement lowers the emotional temperature before logic can land |
| **E** — Explore | Ask questions to understand the real issue and its impact | Diagnoses the actual problem rather than the first symptom |
| **R** — Respond | Answer the real issue with a clear action or resolution | A response to the real concern, not a scripted deflection |

**Required behaviours:** **listen** fully before speaking; **acknowledge** the emotion explicitly before moving to facts; **explore** to the root cause; **respond** to what you actually found.

**Forbidden behaviours:** do not jump to a fix before acknowledging; do not explain policy over an unacknowledged emotion.

**Best fit:** customer support agent, technical support specialist, complaints handler, CSM on support, complaint, escalation and customer check-in calls.

### Complaint Resolution Ladder (5-step Complaints Handling)

Standard name: **5-step Complaints Handling** — the framework the platform scores complaint and escalation calls against: **Acknowledge, Empathise, Investigate, Resolve, Follow-up.**

| Step | Action | What good looks like |
|---|---|---|
| 1. Acknowledge | Confirm you have heard the complaint and take it seriously | The customer knows the issue has landed, not been brushed off |
| 2. Empathise | Show you understand the impact on them | Genuine empathy, not a scripted "sorry for any inconvenience" |
| 3. Investigate | Ask structured questions and check the facts | The real cause established before any promise is made |
| 4. Resolve | Put right what you can, within your authority | A concrete resolution or a clear, owned path to one |
| 5. Follow-up | Confirm the customer is satisfied and close the loop | Satisfaction confirmed by the customer, not assumed |

**Required behaviours:** work all five rungs in order; investigate before resolving; **confirm satisfaction before closing.**

**Forbidden behaviours:** **never blame the customer**; **never promise beyond your authority**; **never close the complaint without confirming the customer is satisfied.**

**Psychology:** a well-handled complaint can build more loyalty than a problem-free experience (the service-recovery paradox) — the peak-end rule means the resolution and the follow-up are what the customer will remember.

**Best fit:** complaints handler, customer support agent, technical support specialist on complaint and escalation calls.

### First-Contact Resolution Model (Support Resolution Quality)

Standard name: **Support Resolution Quality** — the framework the platform scores support and escalation calls against. The goal is a clean resolution at first contact, or a clean handover if not.

| Step | Action | What good looks like |
|---|---|---|
| 1. Verify identity where needed | Confirm who you are speaking to before sharing or changing anything sensitive | Verification done proportionately, without friction theatre |
| 2. Capture in the customer's words | Record the issue as the customer describes it | The problem in their language, not prematurely re-labelled |
| 3. Diagnose with structure | Work through structured questions to isolate the cause | A logical diagnosis, not guess-and-check |
| 4. Resolve or escalate cleanly | Fix at first contact, or hand over warmly with full context | No cold transfer; the next agent inherits the full picture |
| 5. Confirm before closing | Check the issue is genuinely resolved before ending | The customer confirms it is fixed |

**Required behaviours:** **verify identity where needed**; **capture the issue in the customer's own words**; **diagnose with structured questions**; **resolve at first contact or escalate cleanly with a warm handover**; **confirm resolution before closing.**

**Forbidden behaviours:** do not perform a cold transfer that makes the customer repeat everything; do not close on an assumption that the issue is fixed.

**Psychology:** repeating themselves is the single most common driver of customer frustration on support calls — capturing in their words and warm-handing-over removes it, and confirming resolution ends on the peak-end note that shapes the CSAT score.

**Best fit:** customer support agent, technical support specialist on support and escalation calls.

---

## Framework Selection Guide

| Training Topic | Primary Framework | Supporting Concepts |
|----------------|-------------------|---------------------|
| Objection Handling | LEARN + Root Cause Diagnostic | Fast/Slow Thinking, Loss Aversion |
| Discovery | Current to Future Gap Model or Enterprise Deal Map | Current/Future State Gap |
| Full Sales Cycle (Transactional) | Full-Cycle Qualification Model | Reversing, Up-Front Agreement |
| Enterprise, Multi-Stakeholder Deals | Stakeholder Mapping Framework | Red Flags, Win-Results, Buyer Attitude Types |
| Disruptive/Unfamiliar Products | Insight-Led Reframe Script | Constructive Tension, Teach/Tailor/Take Control |
| Deal Stalls, "Need to Think About It" | Indecision Diagnostic | Risk Reduction, Phased Commitment |
| Cold Calling | Permission Opener + EVO | First 60 seconds goal, Reaction vs Objection |
| Cold Email | Pattern interrupt principles | Relevance led opening lines |
| Negotiation | Advanced Influence Techniques | Tactical Empathy, Calibrated Questions |
| Closing | Two Question Close | Commitment Culture |
| Enterprise Sales | Extended Enterprise Map + Gap Model | Multi threading, Champion building |
| Customer Success, Retention | Customer Health Scoring Model | Business Review Structure, NRR Model |
| Customer Success, Onboarding | Extended Customer Journey Model | Recurring Discovery Framework |
| Customer Success, Growth | Expansion Timing Model | Value Realisation Tracking |

### By Role

One row per platform role. Use this to pick the default framework(s) a rep is scored against, then teach to their client's actual rubric via `get_framework`.

| Role | Primary framework(s) | Key supporting concepts | Primary call types |
|---|---|---|---|
| **Outbound BDR** (`outbound_bdr`) | Permission-Based Opener Discipline, ANUM, CHAMP | Reaction vs Objection, EVO, Foundational Fit Check (BANT) | cold_outreach, discovery_call |
| **Inbound SDR** (`inbound_sdr`) | Goal-Led Discovery Map (GPCT), Foundational Fit Check (BANT) | Consultative Conversation Model, Loss Aversion | inbound_qualification, discovery_call, demo_booking |
| **Appointment Setter** (`appointment_setter`) | Permission-Based Opener Discipline, Foundational Fit Check (BANT) | 27 Second Opener, EVO, permission opener | cold_outreach, demo_booking, event_registration |
| **Account Executive** (`account_executive`) | Enterprise Deal Map (MEDDIC/MEDDPICC), SPICED, SPIN, BEBEDC | Sandler Pain Funnel, Stakeholder Mapping, Trade Never Concede, Two Question Close | discovery_call, demo_call, negotiation_call, closing_deal |
| **Business Development Manager** (`business_development_manager`) | Enterprise Deal Map (MEDDIC/MEDDPICC), CHAMP, BEBEDC | Insight-Led Reframe, Sandler Pain Funnel, Trade Never Concede | discovery_call, demo_call, negotiation_call, closing_deal |
| **Sales Engineer** (`sales_engineer`) | Enterprise Deal Map (MEDDIC/MEDDPICC), SPIN | Technical Buyer role (Stakeholder Mapping), Before/After Value Narrative | discovery_call, demo_call |
| **Sales Manager** (`sales_manager`) | Enterprise Deal Map (MEDDIC/MEDDPICC), Trade Never Concede | Stakeholder Mapping, Commitment Culture, calibration via `create_calibration_session` | negotiation_call, closing_deal, discovery_call |
| **Customer Success Manager** (`csm`) | Recurring Revenue Fit Check (SPICED), Business Review Structure (QBR), Renewal & Retention, LAER | Customer Health Scoring, Value Realisation Tracking, Voice of Customer | qbr_business_review, customer_check_in, renewal, upsell, feedback_call |
| **Onboarding Specialist** (`onboarding_specialist`) | Success Plan & Time-to-Value Model | Extended Customer Journey Model, Recurring Discovery, Voice of Customer | customer_onboarding, customer_check_in |
| **Renewals Manager** (`renewals_manager`) | Renewal & Retention Model, Recurring Revenue Fit Check (SPICED) | Business Review Structure (QBR), Trade Never Concede, NRR Model | renewal, qbr_business_review, upsell |
| **Account Manager** (`account_manager`) | Recurring Revenue Fit Check (SPICED), Business Review Structure (QBR), Renewal & Retention | Expansion Timing, Voice of Customer, Success Plan | qbr_business_review, upsell, renewal, customer_check_in |
| **Customer Support Agent** (`customer_support_agent`) | First-Contact Resolution Model, LAER | Complaint Resolution Ladder, Voice of Customer | support_call, escalation_call |
| **Technical Support Specialist** (`technical_support_specialist`) | First-Contact Resolution Model, LAER | Complaint Resolution Ladder, structured diagnosis, warm handover | support_call, escalation_call |
| **Complaints Handler** (`complaints_handler`) | Complaint Resolution Ladder (5-step), LAER | Service-recovery paradox, Peak-End Rule, Tactical Empathy | complaint_call, escalation_call |

---

## Modern Adaptations (2024-2025)

### For AI Saturated Inboxes
- Lead with insight, not introduction
- Personalisation must be specific and earned
- Pattern interrupts more important than ever
- Video/voice messages cut through

### For Economic Scrutiny
- ROI must be quantified early
- CFO ready business cases
- Risk mitigation as important as value
- "Do nothing" is the real competitor

### For Remote Selling
- Camera presence and energy
- Structured agendas essential
- Follow up documentation critical
- Async video for complex explanations
