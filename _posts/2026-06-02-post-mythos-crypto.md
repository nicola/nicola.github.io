---
layout: post
title: "Post-Mythos Crypto"
subtitle: "Vulnerability discovery is getting cheap. Blockchain coordination isn't getting faster."
date: 2026-06-02
categories: Work
---

<link rel="stylesheet" href="/assets/posts/post-mythos/diagram.css">

<span class="newthought">Cryptocurrencies need a plan</span> for a *post-Mythos* world.

Blockchains likely contain latent critical bugs, and AI systems are rapidly improving at finding them. At the same time, public blockchain infrastructure is unusually difficult to patch quickly or quietly.

Several [recent evaluations](https://www.aisi.gov.uk/blog/our-evaluation-of-claude-mythos-previews-cyber-capabilities) from the UK AI Security Institute (AISI) on Anthropic's latest model *Mythos* <label for="mn-raw-1" class="margin-toggle">&#8853;</label><input type="checkbox" id="mn-raw-1" class="margin-toggle"/><span class="marginnote">*Mythos* is used here as shorthand for the first generation of frontier models that cross the threshold of reliable, autonomous, multi-step cyber capability.</span> are showing AI systems are becoming substantially more effective at cyber capabilities: vulnerability discovery, exploit reasoning, patch analysis, and multi-step offensive workflows. To date, no major blockchain team has announced access to Mythos-like models.<label for="mn-raw-2" class="margin-toggle">&#8853;</label><input type="checkbox" id="mn-raw-2" class="margin-toggle"/><span class="marginnote">Please update the authors if you are aware of any.<br><br> Cryptocurrency teams are often international teams with no presence in the US, which might be incompatible with the current policies of some frontier labs.</span>

Just as post-quantum safety demands a years-long, coordinated transition to
new algorithms *now*, while we still can, we should address post-Mythos
safety with the same urgency.


**The thesis** from this memo in short:
* AI with cyber capabilities is now gated to good actors, but soon will be more broadly available (e.g via jailbreak, via broader offer, or open source models catching up)
* Blockchains have latent bugs, and most should be fixed before cyber capabilities become broadly available
* Blockchain teams should prepare for a post-Mythos world where releasing bug fixes could become an attack vector (since blockchains are slow to upgrade and attackers can extract attacks from bug fixes).

**The call to action** for this memo is:
* Frontier labs should seriously consider giving cryptocurrency teams (or trusted security auditors) access to AI cyber capabilities during the grace period
* Security teams should put post-Mythos security at the top of their priorities (short term: finding bugs, long term: plan for secure upgrades)

## Three periods after Mythos
In a pre-Mythos world, bugs are found by torchlight (expert security teams searching one at a time); in a post-Mythos world, they are found by radar (AI sweeping the whole surface at once).

<figure class="fullwidth">
<div class="pmx-timeline">
  <div class="pmx-track">
    <div class="pmx-phase pre">
      <span class="pmx-band">Pre-Mythos</span>
      <span class="pmx-name">Bugs found by hand</span>
      <span class="pmx-row"><b>Who finds bugs</b>A small set of expert researchers; expensive audits.</span>
      <span class="pmx-row"><b>Why it holds</b>Deep bugs are scarce because the skill to find them is scarce.</span>
      <span class="pmx-risk">stable by scarcity</span>
    </div>
    <div class="pmx-phase grace">
      <span class="pmx-band">Grace period</span>
      <span class="pmx-name">Defenders get Mythos first</span>
      <span class="pmx-row"><b>Who finds bugs</b>Vetted teams with gated access to Mythos-class AI fix most reachable bugs.</span>
      <span class="pmx-row"><b>Why it holds</b>Capability still lives behind a few labs that can deny it to bad actors.</span>
      <span class="pmx-risk">low — if access stays gated</span>
    </div>
    <div class="pmx-phase unstable">
      <span class="pmx-band">Unstable period</span>
      <span class="pmx-name">Everyone has Mythos</span>
      <span class="pmx-row"><b>Who finds bugs</b>Everyone — including attackers. Frontier access broadens or open models catch up.</span>
      <span class="pmx-row"><b>Why it's risky</b>Latent bugs get found at scale; race between fix and exploit.</span>
      <span class="pmx-risk">high</span>
    </div>
    <div class="pmx-phase stable">
      <span class="pmx-band">Stable period</span>
      <span class="pmx-name">Bug-free world</span>
      <span class="pmx-row"><b>Who finds bugs</b>Mythos-class tooling has already found and fixed what it can find cheaply.</span>
      <span class="pmx-row"><b>Why it holds</b>Formally secure software and secure upgrades.</span>
      <span class="pmx-risk">stable by saturation</span>
    </div>
  </div>
  <div class="pmx-marker">
    <span class="spacer-pre"></span>
    <span class="here">we are here</span>
    <span class="spacer-rest"></span>
  </div>
  <div class="pmx-axis"><span>now</span><span class="line"></span><span>later</span></div>
</div>
<figcaption>The transition to a post-Mythos world. The phases are defined by who can use Mythos-class cyber capability. We are early in the grace period.</figcaption>
</figure>

<mark style="background:#e4e3ea;color:#5b5b6e;padding:0 .25em;border-radius:.2em"><strong>Pre-Mythos</strong></mark> is the world we used to live in. Finding a deep vulnerability in
a mature system required a specialist with deep context — compiler
behaviour, consensus internals, a specific cryptographic implementation.
Very few people had that skill, audits were expensive, and that scarcity
was, in effect, a security control. Bug density stayed bounded because the
labour to exhaust it did not exist.

<mark style="background:#d9ead2;color:#3d6a2f;padding:0 .25em;border-radius:.2em"><strong>The grace period</strong></mark> is where we are now. Mythos-class capability exists,
but it is gated: it lives behind a small number of frontier labs that can
choose who uses it and refuse misuse. In this window, defenders can get
there first. For example: A protocol team with access can turn AI loose on its own
consensus client, its proving system, its wallet stack — and fix most of
what is cheaply findable before any attacker can run the same search. The
grace period is precisely *the interval during which access to Mythos-class
capability can still be denied to bad actors.* It is a temporary, expiring
asset, and it is the central concept of this memo. Not having access to such capabilities in this phase will leave us unprepared for the next phase.

<mark style="background:#f6ddc7;color:#a85a2a;padding:0 .25em;border-radius:.2em"><strong>The unstable period</strong></mark> begins when frontier access
broadens enough, or open-weight models catch up enough, that anyone can run
Mythos-class analysis. Now every latent bug in widely deployed software is
in play simultaneously. This is the dangerous period, and it is not
clear it will be survivable without severe exploited incidents. Two concerns
dominate:

- **Attackers find a bug before defenders do**, and exploit it directly.
  At cryptocurrency scale, a single such bug in a shared component can mean
  irreversible, nine-figure loss.
- **Defenders find and fix a bug first — and the fix itself leaks it.**
  A good team patches quietly, but an attacker running Mythos-class
  patch-diff analysis reverse-engineers the vulnerability from the public
  upgrade, builds an exploit, and hits every node that has not yet upgraded
  *before the fix propagates.* For slow-to-coordinate blockchains, that
  propagation window can be days or weeks. (This is the secure-upgrade
  problem, below.)

<mark style="background:#dadff3;color:#3a3a78;padding:0 .25em;border-radius:.2em"><strong>The stable period</strong></mark> is the post-Mythos equilibrium worth aiming for: a
world where essentially every bug findable at reasonable cost by
Mythos-class tooling has already been found and fixed, and where we have
working answers to formally secure software and *secure software upgrades.*
It is the analogue of a fully PQC-migrated internet. We do not get there by
default; we get there by doing the work during the grace period.

## What is actually at risk

It is worth being concrete about *where* in the stack the high-severity
bugs live. These are the components where a single vulnerability is both
hard to find by hand today and catastrophic if found by an adversary
tomorrow:

- **Consensus protocols.** Consensus and execution clients, fork-choice
  logic, equivocation edge cases, p2p networking, mempool handling. A bug here can halt a chain,
  split it, or admit an invalid state transition.
- **Complex cryptography.** Proving systems and zk circuits, signature and
  commitment schemes, trusted-setup assumptions, custom or hand-rolled
  crypto libraries. The hardest code to audit and the easiest to get
  subtly wrong.
- **Wallet infrastructure.** Key generation and management, signing flows,
  browser-extension and hardware-wallet stacks. The bug that drains users
  directly, without touching the chain.
- **Smart-contract code.** The application logic itself — DeFi protocols,
  bridges, lending markets, DAOs — much of it immutable once deployed,
  publicly readable, and holding live funds. Reentrancy, access-control
  slips, arithmetic and rounding errors, and flawed economic assumptions
  are exactly the pattern-matchable bugs AI is good at surfacing at scale,
  and the high-value targets sit in the open for anyone to scan.
- **Smart-contract compilers.** Solidity, Vyper, Move compilers and their
  optimizers. A miscompilation silently breaks every contract built with
  it.
- **Virtual-machine execution.** EVM/SVM/MoveVM semantics, gas metering,
  precompiles. A bug here is inherited by everything that runs on top.

These are shared
layers that large parts of the ecosystem depend on at once, and a low-level
flaw propagates upward into every application that inherited its
assumptions.

## The secure-software-upgrade problem

Traditional software has an escape hatch that blockchains lack: it can
patch quietly and fast. Vendors push automatic updates to millions of
users, often before anyone notices; staged disclosure works because patch
distribution outruns patch analysis.

Public blockchains invert both properties. Upgrades are **slow** — they may
require coordination across validators, node operators, exchanges, RPC
providers, wallets, bridges, and governance participants — and they are
**transparent**, visible in public repositories and on-chain before they
take effect. Historically that was tolerable, because only a handful of
researchers could infer a vulnerability from a patch diff fast enough to
matter. Mythos-class patch analysis destroys that assumption. The defender's
own fix becomes the attacker's specification.

This is the crypto-specific crux, and it has no clean solution yet. We need
upgrade mechanisms that are **fast** (propagate before the window closes),
**low-leakage** (do not telegraph the vulnerability they fix), and
**coordinatable** across decentralized, adversarial participants. That is a
genuine, multi-year research-and-engineering migration — the direct
analogue of rolling out post-quantum cryptography. It should start now.

## Call to action

The grace period is a scarce resource that is being spent whether or not we
use it well. Concretely:

1. **Treat the grace period as expiring, and plan against its end.** Decide
   now what your protocol does in the unstable period, before access broadens
   and the choice is made for you.
2. **Get defenders Mythos access now.** Frontier labs and policymakers
   should prioritize and fund vetted, gated access to Mythos-class cyber
   capability for protocol security teams — the people defending the
   highest-value shared infrastructure should be among the first, not the
   last, to wield it. This is the single highest-leverage action available
   during the grace period.
3. **Build bug-finding and reporting protocols for an AI world.** Continuous
   AI-driven auditing of the components above; disclosure pipelines designed
   for the reality that any published patch will be analyzed by Mythos-class
   tooling within hours.
4. **Solve secure software upgrades.** Fund the fast, low-leakage,
   coordinated upgrade mechanisms described above as a first-class research
   priority for the ecosystem.

None of this assumes cryptocurrency is doomed, however the trajectory is real and the grace period is short. Post-quantum
cryptography is a decade of coordinated work done ahead of the threat.
Post-Mythos crypto deserves the same seriousness, starting from the window
we are in right now.

A stable post-Mythos world is possible: one where most bugs findable at reasonable cost by AI have already been found, fixed, or made unexploitable; and where software upgrades are themselves secure under adversarial scrutiny.

## Get in touch

If you work on disclosure, upgrade mechanisms, or AI cyber-capability
evaluations for blockchain ecosystems — or you want gated Mythos-class
access for a protocol security team — reach out. DM
[@iamnotnicola](https://twitter.com/iamnotnicola) on X.

## Acknowledgements

This was written by Nicola Greco with support of AI.

Thanks for conversations to Alex Obadia, Jesse Walden, and Marco De Rossi.
