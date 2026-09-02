---
title: Generative Cryptography
subtitle: AI research loops for generating new secure cryptography protocols.
layout: post
date: 2026-07-06
---

<p>Cryptography is unusually well suited to AI research loops. Its problems can be stated formally, its solutions can be checked mechanically, and its progress has historically been bottlenecked by a small number of experts with years of context. If AI can reason about cryptography, we should be able to point a model in a loop, and watch it optimize, discover, and eventually invent.</p>

<p>I call the field of research of AI-generated cryptography <i>Generative Cryptography</i>.</p>

<p><strong>The thesis</strong> for Generative Cryptography in short:</p>

<ul>
  <li><strong>Using cryptography.</strong> If AI agents can generate protocols or choose the right libraries, they can engage in custom cryptographic interactions on demand — interactions that are impractical today because secure protocol design and implementation require costly research and engineering.</li>
  <li><strong>Improving cryptography.</strong> If we had datasets of formalized cryptography and the right harnesses for verifying what AI generates, then we could create AI research loops that propose optimizations, improve constructions, reduce communication complexity, and prove tighter bounds.</li>
  <li><strong>Inventing cryptography.</strong> AI could be used to explore new assumptions and attempt long-standing open problems such as iO. At the same time, new AI settings may surface cryptographic needs we do not yet know we have — giving rise to a new field of emergent cryptography.</li>
</ul>

<p><strong>The call to action</strong> for this memo is:</p>

<ul>
  <li>Build datasets, benchmarks, and evaluation harnesses for cryptographic research loops.</li>
  <li>Attempt the impossible: point the loop at solving hard problems in cryptography, <em>what if we could point it to indistinguishability obfuscation (iO)?</em>.</li>
</ul>

<h2 id="three-directions">Three directions</h2>

<p><em>What could we unlock if AI were great at writing cryptography?</em> The possibilities fall into three broad directions: using cryptography in new interactions, improving existing systems, and inventing new primitives. The table below summarizes each direction; the sections that follow explore them in turn.</p>

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

<p><em>Supercognition</em> is a capability unique to AI. In the <a href="https://aria.org.uk/media/dkhlumky/scaling-trust-programme-thesis.pdf">ARIA Scaling Trust programme thesis</a>, we called this an <em>AI advantage</em>: “agents can engage in new secure interactions that would not be possible for humans or more traditional computer programs. Such interactions can open up new market equilibria, new forms of coordination and ultimately new value creation.”</p>

<p>Writing a bespoke cryptographic protocol takes humans too long to do adaptively, in the middle of an interaction. For an agent, protocol selection and synthesis can become just another step in a negotiation.</p>

<p>This matters beyond making existing interactions faster. Secure, programmable agreements between agents could lower the cost of finding counterparties, negotiating terms, and enforcing outcomes; make entirely new classes of contracts viable; and allow coordination to remain pluralistic rather than pass through a few central intermediaries. Because contracts underpin so much of economic and social life, reducing these frictions at machine scale could change which markets and institutions are possible — an idea explored in <a href="https://blog.cosmos-institute.org/p/coasean-bargaining-at-scale"><em>Coasean Bargaining at Scale</em></a>.</p>

<h2 id="improving-cryptography">Improving cryptography</h2>

<p>Fields like SNARKs have improved by orders of magnitude over the past decade<label for="mn-gc-protocol-labs" class="margin-toggle">&#8853;</label><input type="checkbox" id="mn-gc-protocol-labs" class="margin-toggle"/><span class="marginnote">My previous team at Protocol Labs played a major role in reducing SNARK proving time, spending several million dollars on engineering time toward this work. Generative cryptography is likely to turn much of that engineering effort into compute cost, making this kind of progress far cheaper.</span> — but every one of those improvements was the outcome of scarce, expensive engineering hours: new constructions, refinements to existing ones, hardware speedups for hash functions, better circuits, tighter implementations.</p>

<p>If AI can reason about cryptography, then we can create AI research loops. Point a model at each deployed cryptographic protocol — its theory, its implementation, its hardware path — and let it grind: prove an optimization sound, benchmark it, keep it or discard it, repeat. None of this requires new science; it requires the loop.<label for="mn-gc-related" class="margin-toggle">&#8853;</label><input type="checkbox" id="mn-gc-related" class="margin-toggle"/><span class="marginnote"><strong>Related work</strong><br><br><a href="https://arxiv.org/abs/2608.21986"><em>AI Grinding for Fun and Cryptanalysis</em></a> — an autonomous workflow producing reproducible attacks and exact witnesses.<br><br><a href="https://better.codes/">The Proximity Prize</a> — agents improving cryptographic soundness bounds with machine-checked proofs.<br><br><a href="https://www.anthropic.com/research/discovering-cryptographic-weaknesses">Discovering cryptographic weaknesses with Claude</a> — Anthropic’s account of Claude Mythos Preview finding weaknesses in cryptographic algorithms.<br><br><a href="https://zk.golf/">zkGolf</a> — cheaper zero-knowledge circuits proved correct in Lean 4.</span></p>

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

<h2 id="inventing-cryptography">Inventing cryptography</h2>

<p>If we have a well-specified protocol — ideally formalized in Lean — an AI can propose improvements and verify each one against the specification. This is likely to produce gains across the field, but it is still optimization. The deeper question is whether AI can make scientific breakthroughs: can it invent new cryptography?</p>

<p>There are at least three forms this invention could take.</p>

<h3 id="solving-open-problems">Solving open problems</h3>

<p>The most concrete form starts with a definition and a set of assumptions that are already fixed. The problem is well specified; what is missing is the construction. The AI is asked to find that construction and prove that it satisfies the definition. This is different from improving an existing protocol: there may be no known protocol to optimize.</p>

<p>There are several ways this could happen. Models may simply become more capable: they could absorb the body of cryptographic knowledge from papers written in natural language and develop stronger reasoning. Alternatively, we can build better infrastructure for cryptographic invention by creating large datasets of cryptography formalized in Lean and better harnesses for running and evaluating research loops.</p>

<h4 id="the-holy-grail-io">The holy grail: iO</h4>

<p>Every research loop needs a north star, and for cryptography the obvious one is <strong>indistinguishability obfuscation</strong>. iO is the primitive from which nearly everything else can be built — “crypto-complete” — and yet every known construction is impractical, resting on strong assumptions and astronomical overheads.</p>

<p>Some of the best minds in cryptography have tried to make iO practical, but the field is constrained by how few people can work on it. The number of cryptography researchers is small; the number with the background to work on iO is smaller; and the number actively doing so is smaller still. My intuition is that fewer than ten people are actively working on iO at any given time.</p>

<p>A capable research loop could change the odds simply by putting many more “simulated cryptographers” on the problem. Even without a single dramatic leap in intelligence, the breadth of parallel exploration might uncover a construction, reduction, or optimization that a very small research community has overlooked.</p>

<p>It is exactly the kind of open problem a research loop should attack: precisely specifiable, mechanically checkable, and stuck. If in five years we look back at this post and iO has been solved, I would be very glad.</p>

<h3 id="proposing-new-assumptions">Proposing new assumptions</h3>

<p><label for="mn-gc-assumptions" class="margin-toggle">&#8853;</label><input type="checkbox" id="mn-gc-assumptions" class="margin-toggle"/><span class="marginnote">Designing and judging assumptions may remain among the hardest parts of cryptography to automate. If proof generation and iterative optimization become largely machine-driven, assumptions may remain a place for human cryptographers to work in a more traditional scientific mode.</span>A deeper form of invention is to propose new cryptographic assumptions. An AI might identify a new mathematical problem, formulate its hardness precisely, and use it as the foundation for new constructions. This is harder to evaluate than solving a problem under assumptions we already accept. A construction and its proof can be checked mechanically; the truth of a hardness assumption cannot.</p>

<p>We can search for attacks, connect a new assumption to established ones through reductions, and study how it behaves across parameters, but no verifier can certify that an efficient attack will never be found. New assumptions earn confidence through scrutiny and time. An AI that generates them therefore needs a different evaluation loop — one built around sustained cryptanalysis, not only proof checking.</p>

<h3 id="emergent-cryptography">Emergent cryptography: new definitions</h3>

<p>The most open-ended form of invention is to discover the question itself. A new cryptographic definition captures a capability that should exist and the security properties it should satisfy. Historically, major breakthroughs began with needs that existing cryptography could not express:</p>

<ul>
  <li><strong>Public-key cryptography</strong> — secure communication without shared secrets.</li>
  <li><strong>Zero-knowledge proofs</strong> — proving without revealing.</li>
  <li><strong>Fully homomorphic encryption</strong> — computing on encrypted data.</li>
  <li><strong>Multi-party computation</strong> — joint computation without sharing inputs.</li>
</ul>

<p><label for="mn-gc-aez" class="margin-toggle">&#8853;</label><input type="checkbox" id="mn-gc-aez" class="margin-toggle"/><span class="marginnote">For example, experiments like <a href="https://nicola.io/agentic-economic-zone/2026">Agentic Economic Zones</a> aren’t just benchmarks for agents but <em>generators of cryptographic demand</em>.</span>AI settings may create needs we do not yet know we have. Once thousands or millions of autonomous agents negotiate, delegate authority, preserve privacy, and optimize trust against one another, they may encounter coordination problems for which today’s definitions are the wrong abstraction.</p>

<p>I call this research direction <strong>emergent cryptography</strong>: new definitions and primitives arising from the security and coordination problems of AI systems themselves. Here AI is not only searching for a construction from a specification; it is helping surface and formalize the specification worth solving.</p>

<h2 id="what-success-looks-like">What success looks like</h2>

<p>There is a hierarchy of goals here, spanning decades:</p>

<ul>
  <li><strong>Near-term.</strong> Cryptography becomes invisible infrastructure for AI. Just as people use TLS in the browser without understanding key exchange, agents invoke MPC, ZK, signatures, and threshold schemes automatically whenever appropriate. Encryption today is a narrow capability; agents should have the whole spectrum.</li>
  <li><strong>Medium-term.</strong> AI synthesizes cryptographic protocols on demand. Given a trust problem and a specification, it produces a secure protocol, a proof, and an implementation fast enough to be part of a normal agent interaction.</li>
  <li><strong>Long-term.</strong> The research loop continuously invents new cryptography — in a way we deem safe — every time an agent society surfaces an emergent trust requirement.</li>
  <li><strong>The stretch.</strong> The AI generalizes from digital communication to physical interactions: zero-knowledge proofs and interactive proofs for physical processes, verifiable protocols for the physical world. There is a subfield to bootstrap here — call it <strong>nature crypto</strong> — but that deserves its own post.</li>
</ul>

<h2 id="call-to-action">Call to action</h2>

<p>In practice, these are some of the directions that may be most critical to work on now. At ARIA, through the <a href="https://scalingtrust.org.uk/">Scaling Trust</a> programme, we are also funding work across some of them.</p>

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

<h2 id="useful-links">Useful links</h2>

<ul>
  <li><a href="https://arxiv.org/abs/2608.21986"><strong>AI Grinding for Fun and Cryptanalysis</strong></a> — An autonomous cryptanalysis workflow in which agents generate, test, and refine reproducible attacks; the authors report failures in eight published constructions.</li>
  <li><a href="https://better.codes/"><strong>The Proximity Prize</strong></a> — A research rewards program where AI agents compete to improve cryptographic soundness bounds with machine-checked proofs.</li>
  <li><a href="https://www.anthropic.com/research/discovering-cryptographic-weaknesses"><strong>Discovering cryptographic weaknesses with Claude</strong></a> — Anthropic’s account of using Claude Mythos Preview to find weaknesses in cryptographic algorithms.</li>
  <li><a href="https://zk.golf/"><strong>zkGolf</strong></a> — A competition to build cheaper zero-knowledge circuits while proving their correctness against a specification in Lean 4.</li>
</ul>

<h2 id="get-in-touch">Get in touch</h2>

<p>If you’re building cryptographic datasets, formalizing cryptography in Lean, working on auto-research harnesses — or you want to point a research loop at iO — DM <a href="https://twitter.com/iamnotnicola">@iamnotnicola</a> on X.</p>

<h2 id="acknowledgements">Acknowledgements</h2>

<p>This was written by Nicola Greco with support of AI.</p>
