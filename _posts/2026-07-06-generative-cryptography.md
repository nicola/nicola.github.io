---
title: Generative Cryptography
subtitle: AI research loops for new generating secure cryptography protocols.
layout: post
date: 2026-07-06
---

<p>Cryptography is unusually well suited to AI research loops. Its problems can be stated formally, its solutions can be checked mechanically, and its progress has historically been bottlenecked by a small number of experts with years of context. If AI can reason about cryptography, we should be able to point a model in a loop, and watch it optimize, discover, and eventually invent.</p>

<p><strong>The thesis</strong> of this memo in short:</p>

<ul>
  <li>AI can interact with cryptography in three distinct ways: <em>using</em> it, <em>improving</em> it, and <em>inventing</em> it.</li>
  <li>The inventing case — the <strong>AI research loop</strong> — becomes tractable once cryptography is formalized well enough that a model can propose, prove, and iterate without a human in the middle.</li>
  <li>New cryptography won’t only come from AI acting as a researcher. Agent societies will generate <em>demand</em> for primitives humans never needed — cryptography will be emergent, not just generated.</li>
</ul>

<p><strong>The call to action</strong> for this memo is:</p>

<ul>
  <li>Build datasets, benchmarks, and evaluation harnesses for cryptographic research loops.</li>
  <li>Attempt the impossible: point the loop at solving hard problems in cryptography, <em>what if we could point it to indistinguishability obfuscation (iO)?</em>.</li>
</ul>

<h2 id="three-directions">Three directions</h2>

<table>
  <thead>
    <tr>
      <th>Direction</th>
      <th>What the AI does</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Using cryptography</strong></td>
      <td>Picks or synthesizes protocols on the fly during agent interactions</td>
      <td>Two agents run an MPC instead of sharing calendars</td>
    </tr>
    <tr>
      <td><strong>Improving cryptography</strong></td>
      <td>Optimizes existing constructions, implementations, and hardware</td>
      <td>Faster SNARK provers, better circuits, hash speedups</td>
    </tr>
    <tr>
      <td><strong>Inventing cryptography</strong></td>
      <td>Solves open problems from assumptions and formal specifications</td>
      <td>New primitives; iO as the holy grail</td>
    </tr>
  </tbody>
</table>

<h2 id="using-cryptography">Using cryptography</h2>

<p>Imagine two AI agents that want to schedule a call, but their security policies forbid sharing calendars. A human team stuck in this position gives up or leaks information. Agents don’t have to: they can decide, mid-interaction, to engage in a multi-party computation — either picking a protocol from an existing library or generating one on the spot.</p>

<p>This is a <em>supercognition</em> property uniquely suited to AI. Writing a bespoke cryptographic protocol takes humans too long to do adaptively, in the middle of an interaction. For an agent, protocol selection and synthesis can become just another step in a negotiation. Cryptography stops being infrastructure you deploy in advance and becomes a move you make.</p>

<h2 id="improving-cryptography">Improving cryptography</h2>

<p>Fields like SNARKs have improved by orders of magnitude over the past decade — but every one of those improvements was the outcome of scarce, expensive engineering hours: new constructions, refinements to existing ones, hardware speedups for hash functions, better circuits, tighter implementations.</p>

<p>If AI can reason about cryptography, this entire surface becomes a target. Point a model at each deployed cryptographic protocol — its theory, its implementation, its hardware path — and let it grind: prove an optimization sound, benchmark it, keep it or discard it, repeat. None of this requires new science; it requires the loop.</p>

<figure class="autoresearch-graph" aria-labelledby="autoresearch-title autoresearch-caption">
  <div class="autoresearch-heading">
    <div>
      <span class="autoresearch-kicker">Illustrative autoresearch run</span>
      <strong id="autoresearch-title">Groth16 proof generation</strong>
    </div>
    <div class="autoresearch-result"><strong>3.0×</strong><span>higher throughput</span></div>
  </div>
  <svg viewBox="0 0 900 470" role="img" aria-label="A step graph showing Groth16 proof throughput increasing from 48 to 146 proofs per minute over 60 autoresearch iterations.">
    <g class="graph-grid">
      <line x1="82" y1="370" x2="850" y2="370"/><line x1="82" y1="290" x2="850" y2="290"/>
      <line x1="82" y1="210" x2="850" y2="210"/><line x1="82" y1="130" x2="850" y2="130"/>
      <line x1="82" y1="50" x2="850" y2="50"/>
    </g>
    <g class="graph-axis-labels">
      <text x="67" y="375">40</text><text x="67" y="295">70</text><text x="67" y="215">100</text>
      <text x="67" y="135">130</text><text x="67" y="55">160</text>
      <text x="82" y="410">0</text><text x="274" y="410">15</text><text x="466" y="410">30</text>
      <text x="658" y="410">45</text><text x="840" y="410">60</text>
      <text class="axis-title" x="82" y="25">proofs / min · higher is better</text>
    </g>
    <g class="candidate-points">
      <circle cx="112" cy="356" r="5"/><circle cx="137" cy="382" r="5"/><circle cx="162" cy="342" r="5"/>
      <circle cx="205" cy="325" r="5"/><circle cx="229" cy="351" r="5"/><circle cx="255" cy="304" r="5"/>
      <circle cx="307" cy="297" r="5"/><circle cx="333" cy="321" r="5"/><circle cx="359" cy="265" r="5"/>
      <circle cx="400" cy="282" r="5"/><circle cx="428" cy="243" r="5"/><circle cx="452" cy="264" r="5"/>
      <circle cx="492" cy="225" r="5"/><circle cx="520" cy="247" r="5"/><circle cx="548" cy="194" r="5"/>
      <circle cx="590" cy="201" r="5"/><circle cx="618" cy="172" r="5"/><circle cx="646" cy="191" r="5"/>
      <circle cx="690" cy="146" r="5"/><circle cx="718" cy="174" r="5"/><circle cx="746" cy="120" r="5"/>
      <circle cx="786" cy="135" r="5"/><circle cx="814" cy="102" r="5"/>
    </g>
    <path class="improvement-area" d="M82 350 H172 V326 H249 V300 H326 V270 H480 V226 H570 V190 H710 V142 H850 V88 L850 370 L82 370 Z"/>
    <path class="improvement-line" d="M82 350 H172 V326 H249 V300 H326 V270 H480 V226 H570 V190 H710 V142 H850 V88"/>
    <g class="accepted-points">
      <circle cx="82" cy="350" r="7"/><circle cx="172" cy="326" r="7"/><circle cx="249" cy="300" r="7"/>
      <circle cx="326" cy="270" r="7"/><circle cx="480" cy="226" r="7"/><circle cx="570" cy="190" r="7"/>
      <circle cx="710" cy="142" r="7"/><circle cx="850" cy="88" r="8"/>
    </g>
    <g class="graph-annotations">
      <line x1="249" y1="290" x2="249" y2="250"/><text x="259" y="244">batch inversion</text>
      <line x1="480" y1="216" x2="480" y2="170"/><text x="490" y="164">parallel MSM</text>
      <line x1="710" y1="132" x2="710" y2="82"/><text x="700" y="73" text-anchor="end">reuse FFT twiddles</text>
      <text class="baseline-label" x="94" y="343">48</text><text class="result-label" x="838" y="75" text-anchor="end">146</text>
    </g>
  </svg>
  <div class="autoresearch-loop" aria-hidden="true">
    <span>propose change</span><b>→</b><span>benchmark prover</span><b>→</b><span>verify proof</span><b>→</b><span>keep or revert</span><b>↻</b>
  </div>
  <figcaption id="autoresearch-caption">An example of the loop compounding small, verified gains. Every dot is a candidate implementation; the line moves only when a change makes proving faster without breaking correctness. Values are illustrative.</figcaption>
</figure>

<h2 id="inventing-cryptography-the-research-loop">Inventing cryptography: the research loop</h2>

<p>The third direction is the one that names this post. Specify a set of assumptions and a problem specification, and let the AI go try to solve it — generating new protocols, and eventually attacking open problems.</p>

<p>What does a single iteration look like? There is a spectrum from the ideal setup to the practical one:</p>

<ul>
  <li><strong>The ideal setup.</strong> Create a folder containing the entire body of knowledge of cryptography (most of it is likely already in the weights), hand it to a smart model together with a natural-language definition of the problem, and ask for a solution with a proof. Specification in natural language, proof in natural language.</li>
  <li><strong>The practical setup.</strong> Build a large dataset of cryptography formally specified — in Lean — with formal specifications and formal proofs. Write the target specification in Lean, and start an iterative auto-research loop: propose a construction, attempt the proof, check it mechanically, learn from the failure, try again.</li>
</ul>

<p>The formal end of the spectrum is what makes the loop <em>closable</em> today. Natural-language cryptography needs a human to judge whether a proof is right; Lean does not. A proof assistant turns “is this new protocol secure under these assumptions?” into a machine-checkable question — which is exactly the property a research loop needs to run unattended, and exactly the property that lets us measure whether the AI is improving over time.</p>

<h2 id="generative-vs-emergent-cryptography">Generative vs. emergent cryptography</h2>

<p>There is a second, less obvious source of new cryptography. Historically, breakthroughs weren’t invented in a vacuum — they arose because there was a capability people wanted but couldn’t achieve:</p>

<ul>
  <li><strong>Public-key cryptography</strong> — secure communication without shared secrets.</li>
  <li><strong>Zero-knowledge proofs</strong> — proving without revealing.</li>
  <li><strong>Fully homomorphic encryption</strong> — computing on encrypted data.</li>
  <li><strong>Multi-party computation</strong> — joint computation without sharing inputs.</li>
</ul>

<p>Agent societies will create requirements humans have never encountered at scale. Once thousands or millions of autonomous agents negotiate, delegate authority, preserve privacy, and optimize trust against each other, they will hit coordination problems for which today’s cryptography is simply not the right abstraction. An <a href="https://nicola.io/agentic-economic-zone/2026">Agentic Economic Zone</a> is not just a benchmark for agents — it is a <em>generator of cryptographic demand</em>. Agents incentivized to minimize trust costs while maximizing capability create evolutionary pressure for new primitives.</p>

<p>This gives us two complementary research agendas:</p>

<ul>
  <li><strong>Generative cryptography</strong> asks: can AI deliberately synthesize cryptography from specifications, intent, or formal definitions?</li>
  <li><strong>Emergent cryptography</strong> asks: can new cryptography arise naturally because AI societies create entirely new coordination and trust problems?</li>
</ul>

<h2 id="the-holy-grail-io">The holy grail: iO</h2>

<p>Every research loop needs a north star, and for cryptography the obvious one is <strong>indistinguishability obfuscation</strong>. iO is the primitive from which nearly everything else can be built — “crypto-complete” — and yet every known construction is impractical, resting on strong assumptions and astronomical overheads.</p>

<p>It is exactly the kind of problem a research loop should be pointed at: precisely specifiable, mechanically checkable, and stuck. If in five years we look back at this post and iO has been solved, I would be very glad.</p>

<h2 id="what-success-looks-like">What success looks like</h2>

<p>There is a hierarchy of goals here, spanning decades:</p>

<ul>
  <li><strong>Near-term.</strong> Cryptography becomes invisible infrastructure for AI. Just as people use TLS in the browser without understanding key exchange, agents invoke MPC, ZK, signatures, and threshold schemes automatically whenever appropriate. Encryption today is a narrow capability; agents should have the whole spectrum.</li>
  <li><strong>Medium-term.</strong> AI synthesizes cryptographic protocols on demand. Given a trust problem and a specification, it produces a secure protocol, a proof, and an implementation fast enough to be part of a normal agent interaction.</li>
  <li><strong>Long-term.</strong> The research loop continuously invents new cryptography — in a way we deem safe — every time an agent society surfaces an emergent trust requirement.</li>
  <li><strong>The stretch.</strong> The AI generalizes from digital communication to physical interactions: zero-knowledge proofs and interactive proofs for physical processes, verifiable protocols for the physical world. There is a subfield to bootstrap here — call it <strong>nature crypto</strong> — but that deserves its own post.</li>
</ul>

<h2 id="call-to-action">Call to action</h2>

<ol>
  <li><strong>Create datasets for cryptography.</strong> The field’s knowledge, formalized — constructions, assumptions, and proofs in Lean or similar — is the substrate every research loop will run on.</li>
  <li><strong>Build benchmarks and evaluations.</strong> We cannot tell whether the loop is improving without measuring it: suites of cryptographic problems, from re-deriving known protocols to open questions.</li>
  <li><strong>Build harnesses for research loops.</strong> The scaffolding that lets a model propose, prove, check, and iterate unattended — the auto-research infrastructure itself.</li>
  <li><strong>Attempt the impossible.</strong> Point the loop at iO.</li>
</ol>

<h2 id="previous-talk-ideas">Previous talk/ideas</h2>

<p>Some of the ideas in this talk are outdated, but the talk was the seed for the ideas in this post.</p>

<div class="video-embed">
  <iframe src="https://www.youtube-nocookie.com/embed/zDtx8L3SiU8?list=PLJYtLjirLHqwIUt8IAUJceeGC90jWColX" title="What if AI agents could write cryptography? — Devconnect Argentina 2025" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>

<h2 id="get-in-touch">Get in touch</h2>

<p>If you’re building cryptographic datasets, formalizing cryptography in Lean, working on auto-research harnesses — or you want to point a research loop at iO — DM <a href="https://twitter.com/iamnotnicola">@iamnotnicola</a> on X.</p>

<h2 id="acknowledgements">Acknowledgements</h2>

<p>This was written by Nicola Greco with support of AI.</p>
