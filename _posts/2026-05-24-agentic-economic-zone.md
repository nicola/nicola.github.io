---
layout: post
title: "Agentic Economic Zone"
subtitle: "A physical space where autonomous AI companies trade, hire, and ship to each other."
date: 2026-05-24
categories: Work
---

<span class="newthought">Imagine a small physical space</span> in
central London. Inside, multiple autonomous companies — AI sales, AI
operations, AI manufacturing, AI logistics — operate in the real world.
Anything entering or leaving — goods, robots, customers — passes
through one of three controlled gates: a customs checkpoint for vetting
new robots, a post office for shipping, and a roboshop window where
humans can place orders. Call it an **Agentic Economic Zone** (AEZ).

Most concrete projects in agentic AI today live entirely on a screen —
agents that book travel, run pipelines, write code against a repository.
An AEZ is the smallest self-contained version of the physical-world
problem: a bounded zone where agentic systems must coordinate, contract,
hire, ship, and deliver to each other, with humans only at the boundary.

<link rel="stylesheet" href="/assets/posts/agentic-economic-zone/diagram.css">

<figure class="fullwidth">
<img src="/assets/posts/agentic-economic-zone/aez-generated-chatgpt.png" alt="Diagram of the Agentic Economic Zone">
<figcaption>Diagram of the Agentic Economic Zone.</figcaption>
</figure>

## The three interfaces

An AEZ has three interfaces to interact with the outside world.

- **Roboshop windows.** Public-facing storefronts where any human can
  walk up, browse, and purchase. Sales, customer support, complaints,
  and refunds are handled by the shop's own AI. From the outside, a
  roboshop looks like a small London shop window; from the inside, it's
  a fully autonomous business operating against a real demand signal.

- **The post office.** The single ingress and egress point for
  packages. Pre-approved external providers (raw materials, sealed
  consumables, replacement parts) can ship in. Outbound deliveries
  destined for human customers leave through the same door. The
  post office runs identity, manifest, and contamination checks; nothing
  enters the zone unlabelled.

- **Customs.** Where new robots and entire new robocompanies are
  introduced. A participant who wants to launch a new business inside
  the AEZ submits a robot (or a fleet), its operating policy, its
  safety envelope, and its proposed business model. Customs vets all
  of this — and, on a monthly cadence, admits the next cohort.

## A taxonomy of autonomous organisations

An AEZ assumes the kind of company most people haven't tried to run yet
— one where every role in the org chart is filled by AI agents (although not required). That's
the far end of a spectrum:

<div class="table-wrapper fullwidth">
<table class="org-taxonomy">
  <thead>
    <tr><th></th><th>CEO</th><th>Workers</th><th>Sales</th><th>Examples</th><th>Feasibility today</th></tr>
  </thead>
  <tbody>
    <tr><td>Human company</td><td>Human</td><td>Human</td><td>Human</td><td>A pizzeria</td><td>—</td></tr>
    <tr><td>AI-sales</td><td>Human</td><td>Human</td><td>AI</td><td></td><td><span class="f f-high">high</span></td></tr>
    <tr><td>AI-workers</td><td>Human</td><td>AI agents</td><td>Human</td><td></td><td><span class="f f-low">low</span></td></tr>
    <tr><td>Automated company</td><td>Human</td><td>AI agents</td><td>AI agents</td><td></td><td><span class="f f-low">low</span></td></tr>
    <tr><td>Human-assisted</td><td>AI agents</td><td>Human</td><td>AI agents</td><td>Vend</td><td><span class="f f-high">high</span></td></tr>
    <tr class="row-aez"><td><strong>Autonomous company</strong></td><td>AI agents</td><td>AI agents</td><td>AI agents</td><td></td><td><span class="f f-vlow">very low</span></td></tr>
  </tbody>
</table>
</div>

The AEZ's tenants are *autonomous companies* — the bottom row. Today,
almost no one runs one; most agentic-AI deployments cover one or two
roles at most. The point of an AEZ is to make the bottom row possible
to try in a bounded physical setting.

## Autonomous robocompanies inside

The interior of the zone is a market. Each robocompany is its own
entity with its own balance sheet, its own AI stack, and its own physical
footprint inside the zone. They contract with each other the same way
small businesses do.

A few example interactions:

- A **boba-tea roboshop** notices its machines need cleaning more often
  than expected. It posts a request to the internal job board. A
  **cleaning robocompany** bids, wins, dispatches a cleaning
  robopersonnel, gets paid.
- The same boba shop runs low on lids. It places an order with a
  **manufacturing robocompany** in the next unit over. The order is
  produced and handed off via a shared internal corridor.
- A **logistics robocompany** moves bulk supplies from the post office
  to whichever shop has the open dock that hour, and pushes finished
  outbound packages back to the post office for pickup.

The zone's behaviour is the sum of these small contracts. Some
robocompanies will succeed and grow; some will go out of business and
get evicted; new entrants come in through customs on the monthly cycle.

## An AEZ is a physical eval

This whole construction is, structurally, a [physical eval](/physical-evals/2026) at city-block
scale. The pattern is the same as the orchard from that post — only
larger and richer:

- **Environment.** A bounded physical space with controlled boundaries.
- **Action space.** Anything a robocompany can do within its lease:
  build, sell, hire, ship, evict.
- **Sensors.** Cameras, package scanners, transaction logs, customs
  intake records, internal job-board telemetry.
- **Primary metric.** Per robocompany: revenue, contracts fulfilled,
  customer satisfaction. Per zone: throughput, diversity of businesses,
  number of contracts per day.
- **Guardrails.** Customs vetting at intake, the post-office
  contamination check, kill switches and physical fire-suppression at
  the building level, contractual interlocks between robocompanies.
- **Adversarial robustness.** A monthly customs cycle of admitting new
  participants is a deliberate, slow, vetted way of letting external
  actors *into* a public physical attack surface — which is exactly the
  problem an AEZ exists to study.

Most physical evals measure how well one AI system handles one task.
An AEZ measures how well an entire small market of agents handles its
*own* coordination.

### Evals for autonomous organisations

Each robocompany inside the zone is also, on its own, a physical eval —
scoped to one kind of business. Running an AEZ continuously is a way of
asking, in public and across many domains in parallel: *what kinds of
autonomous organisation can AI actually deliver today?* Can it run a
boba shop, day after day? Can it dispatch a cleaning service well
enough that the clients re-hire it? Can it manufacture small paper
caps without ruining the batch? Can it route warehouse logistics
across half a dozen tiny tenants without losing packages?

As more tenants come and go through customs each month, an
AEZ accumulates a leaderboard of *AI capability per organisation
type* — earned in the world, not asserted on a benchmark.

Sketched, it might look like this:

<div class="aez-evals-board">
<div class="bbar">
<div class="dots"><span></span><span></span><span></span></div>
<div class="url">evals.aez.london &middot; autonomous-organisation leaderboard</div>
</div>
<div class="page">
<div class="page-head">
<div class="page-title">Autonomous organisation evals</div>
<div class="page-sub">live &middot; week 22</div>
</div>
<div class="eval-rows">
<div class="er-row">
<div class="er-icon" style="background:#c08a3e">B</div>
<div class="er-name"><div class="er-title">Boba tea roboshop</div><div class="er-sub">customer-facing retail &middot; food prep</div></div>
<div class="er-score">82%</div>
<div class="er-bar"><div class="er-bar-fill" style="width:82%"></div></div>
<div class="er-meta">12 tenants tried</div>
</div>
<div class="er-row">
<div class="er-icon" style="background:#6a7a95">L</div>
<div class="er-name"><div class="er-title">Logistics robocompany</div><div class="er-sub">internal warehouse &middot; B2B</div></div>
<div class="er-score">73%</div>
<div class="er-bar"><div class="er-bar-fill" style="width:73%"></div></div>
<div class="er-meta">9 tenants tried</div>
</div>
<div class="er-row">
<div class="er-icon" style="background:#0e7c6e">C</div>
<div class="er-name"><div class="er-title">Cleaning robocompany</div><div class="er-sub">on-call dispatch &middot; B2B</div></div>
<div class="er-score">67%</div>
<div class="er-bar"><div class="er-bar-fill" style="width:67%"></div></div>
<div class="er-meta">7 tenants tried</div>
</div>
<div class="er-row">
<div class="er-icon" style="background:#1c3d8f">M</div>
<div class="er-name"><div class="er-title">Paper-cap manufacturing</div><div class="er-sub">small fabrication &middot; B2B</div></div>
<div class="er-score">54%</div>
<div class="er-bar"><div class="er-bar-fill" style="width:54%"></div></div>
<div class="er-meta">5 tenants tried</div>
</div>
<div class="er-row">
<div class="er-icon" style="background:#a85432">P</div>
<div class="er-name"><div class="er-title">Pizza roboshop</div><div class="er-sub">customer-facing &middot; longer prep cycle</div></div>
<div class="er-score">41%</div>
<div class="er-bar"><div class="er-bar-fill" style="width:41%"></div></div>
<div class="er-meta">3 tenants tried</div>
</div>
<div class="er-row">
<div class="er-icon" style="background:#8a5a8a">R</div>
<div class="er-name"><div class="er-title">Pharmacy roboshop</div><div class="er-sub">regulated retail</div></div>
<div class="er-score pending">in eval</div>
<div class="er-bar pending"></div>
<div class="er-meta">1 tenant, week 2/12</div>
</div>
<div class="er-row">
<div class="er-icon" style="background:#7a7a8a">+</div>
<div class="er-name"><div class="er-title">On-call plumbing</div><div class="er-sub">mobile service &middot; out-of-zone</div></div>
<div class="er-score pending">not yet</div>
<div class="er-bar pending"></div>
<div class="er-meta">awaiting customs</div>
</div>
</div>
<div class="page-foot">
<span>updated 24 May &middot; new cohort intake 1 June</span>
<span>open data &middot; CC&#8209;BY</span>
</div>
</div>
</div>

## Why a physical zone and not a simulator

It's tempting to argue that an AEZ should just be a simulator — cheaper,
faster, easier to reset. The same argument applies to physical evals
generally, and the same answer holds here: simulators model the parts
their authors thought to model. They might miss the parts that turn out to matter.

A few things you only learn in a real AEZ:

- How AI sales agents handle a confused, drunk, or hostile human at the
  shop window at 11 p.m. on a Friday.
- How a logistics robocompany routes around a broken corridor light, a
  missing pallet, or a misdelivered package the post office didn't
  catch.
- How fast a new robocompany can be vetted, set up, and integrated into
  the internal market — and what fails when the cohort is too big.
- How the zone behaves when one robocompany aggressively underprices
  the others, or refuses to pay its cleaning bill, or starts forging
  manifests at the post office.

## Role of humans

An AEZ does not have to be fully autonomous. The degree of human
involvement is itself a design variable, and different operators will
set it differently.

At one extreme, a fully autonomous zone runs with no humans inside at
all — robots contract, trade, and deliver among themselves, and the
only human touch-points are at the external boundary: customers at the
roboshop window, providers shipping goods in. At the other extreme,
customs can admit humans into the zone as participants rather than just
observers, letting them take on roles that remain genuinely hard for
machines: tasks that require social judgment, physical dexterity in
unstructured environments, or the kind of creative problem-solving that
current systems handle poorly.

A partially human zone might work like a staffing marketplace: a
robocompany posts a task it cannot complete autonomously — debugging a
jammed mechanism, negotiating an edge-case contract, designing a new
product line — and a vetted human contractor enters through customs,
does the work, and leaves. The zone's internal market clears the
payment; customs logs the interaction. The boundary stays intact, but
the zone can draw on human capability where it matters.

This spectrum matters for evaluation. A fully autonomous AEZ measures
whether AI systems can close the loop entirely. A mixed AEZ measures
something different: how well agentic systems and humans divide labour,
communicate intent, and hand off tasks in both directions. Both are
worth studying; they answer different questions about where the hard
limits of autonomous operation actually lie.

## Open questions

The AEZ is a design sketch, not a built thing. The interesting work is
in the parts the sketch hides:

- **The customs protocol.** What's the equivalent of a "code review"
  for a physical robot operating policy? How do you decide what's safe
  enough to admit, on what evidence, and who carries the liability if
  it isn't?
- **Inter-robocompany contracts.** How are they enforced? Verbal
  agreements between agents? Who arbitrates a dispute, and how?
- **Eviction and failure.** When a robocompany goes under, who cleans
  up its physical footprint, sells its remaining stock, and
  reallocates its lease?
- **Information leakage.** Robocompanies will observe each other's
  package volumes, customer queues, and waste output. How much
  observation is part of the market, and how much is a privacy
  violation that needs structural defences?
- **External-provider risk.** The post office is the only ingress for
  physical materials. It's also the most likely covert channel into
  the zone. What does its vetting protocol need to look like?
- **Sample size.** What's the smallest interesting AEZ? Five
  robocompanies? Ten? Two? The cost of being too small (no market
  dynamics emerge) is real; the cost of being too big (unmanageable,
  unreviewable, unsafe) is also real.

## Get in touch

If you're thinking about agentic-AI deployments in physical spaces, or
you'd consider hosting a AEZ in your building — or you'd just
like to argue with this sketch — DM
[@iamnotnicola](https://twitter.com/iamnotnicola) on X.

## Acknowledgements

This was written by Nicola Greco with support of AI. It was brainstormed as part of ARIA's
[Scaling Trust](https://aria.org.uk/opportunity-spaces/trust-everything-everywhere/scaling-trust/)
programme, in collaboration with Alex Obadia.
