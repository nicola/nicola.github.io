---
layout: post
title:  "Idea: Research Coin and futuristic research labs"
date:   2017-04-01 13:06:04
categories: Ideas
---

## Futuristic research labs

A few months ago, I started asking myself this question:

> **How can we run a futuristic research lab and fund great research?**

This is the type of questions that the excellent people at [Protocol Labs Inc.](https://protocol.ai) are also trying to tackle. Their strategy as a company and as an industry R&D&D lab is to launch token-based network protocols and use the token sales to fund new research.

Universities are not companies, and it is difficult to fund research from which the outcomes are unknown (or yet to be researched!). Given the incentive power that *tokens* have in these new blockchain-based decentralized systems, I  wonder if we can borrow some ideas from these systems to rethink the way we fund and we run university research labs.

The above question lead to another question:

> **Can we fund research at MIT by launching an MITCoin?**

While I am still trying to answer that question, I have no clear idea about what values an MITCoin could actually bring. Is there a more generic *Research Coin* that can be used to reward great research?

In the rest of this post, I am describing a sort of proposal for *Research Coin*.
My plan here is to update this blogpost and propose a lot of bad ideas, which I don't necessarly endorse. Hopefully a great idea will come out of this, if you are interested in the problem or you are running a research lab and want to be part of this conversation, please get in touch with me! :)

## Attempt 1: Research Coin

### Motivation
- Reward academics for their good research
- Finding new funding strategy beyond grants!
- Incentivize peer-review

### Assumptions
- Assumption 0: There is a set of great peer-reviewed conferences/journal
- Assumption 1: A research paper is good if it gets reviewed from those
- Assumption 2: Peer review is always wise and unbiased

### Idea
- *Oracles*: There is a set of well known conferences that is chosen and they are trusted to reveal the published papers (we can just rely on HTTPS)
- *Minting Tokens*: If a paper is published in one of these conferences, the paper receives a reward (that can is shared between the authors) (can still be automated)
- *Tokens*: Tokens can be exchanged and sold by the academics

### What to do with these tokens? (crazy ideas starting here)

- **Reputation score**

  Organizations that support research could have a reputation score based on how much they have donated to academics (?).

  For example: A company can be a sponsor of the conference only if they have a minimum amount of research coins
- **Incentivizing Peer-Review**

  A peer-to-peer network of peer reviewers can review the papers, and bet whether a paper will be accepted or not for a particular conference. On the conference deadlines, all the winning reviewers get rewarded. This system could re-create interesting behaviors, where peer-reviewers will try to look for great papers that need some more work and give comments to the authors.

### Questions

- Are there better uses for the token? (I think the peer review betting idea can be really powerful - although there should be no insider trading!)
- Are the assumptions correct?
- Do these ideas distort the way we do research?

I also have other inexplored ideas:

- Can we find a way for researchers to “bet” on their research?
- Can we turn the reputation of citations into revenue streams?

### Future directions

I am struggling to see why Attempt 1 can really work, and I scared it might incentivize new types of behaviour (corrupted peer reviewers!) or even disagreement on who decides, who is in the "closed" circle of conferences and journals.

## Attempt 2: University Coin

This idea comes from a midnight conversation with Matt from MIT.
It's an improvement (or different attempt) for a [Research Coin](http://nicola.io/research-coin/2017).

### New token model

Each institution, research lab or group can create an "org".
Each *org* is assigned 100 org-tokens that are specific to the *org*. For example, the *org* "MIT" will have MITCoin, "Cornell" will have CornellCoin and so on. Even a specific lab, can decide to create an *org*, for example MIT PDOS can create a PDOS token. An *org* can decide whether to sell or not their 100 *org*-tokens.

### Betting system

Similarly to Research Coin, anyone can bet on a paper being accepted at a specific conference. However, one can bet on a paper by using the *org*-token representing the *org* used by the researchers. In other words, if I want to bet that the MIT paper will be accepted, I must bet tokens from MIT.

Bets run in rounds, for each conference, owners of tokens can bet org-tokens on papers from a specific org. When papers are selected by the conference, all the lost bets are split proportionally (however, I am not sure how, this is actually non-trivial) to the amount they bet.

### Intuitions

The intuition here is that universities (and research labs) can use do great research to increase the value of their tokens, since many would prefer to bet on their research. I expect that the token of a very active university will have a higher price, but bets will have a low risk, hence a lower return, however, I will need to revisit this intuition soon.

This is however is more difficult to implement in practice than idea 1. This requires research organizations to actively create orgs and sell a percentage of their coins (well, we can still bootstrap this with researchers getting reward coins for their published research..!)

I am overall convinced that this is NOT a good idea yet. I am not sure if betting on research paper passing through a conference is the best use of a currency.

### Questions
- Would this lead to making great research or would this be optimize for short-term good publishable research?
- Can universities do "ICO"s for selling betting credit for their university?
- Would this really increase peer-review or there will just be speculation?

Help me think about Attempt 3!

<!-- ## Action points
- Creating a system uses conference webpages or google scholar as trusted oracle should be easy
- We could create a research coin based on ETH in a very simple way -->
