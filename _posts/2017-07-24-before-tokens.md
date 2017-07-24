---
layout: post
title:  "Before Tokens"
date:   2017-06-21 13:06:04
categories: Ideas
---

From January, [due](https://filecoin.io) [to](https://internetpolicy.mit.edu/team/nicola-greco-2/) [different](http://dci.mit.edu/people.html) [reasons](http://nicola.io/computation-coin/2017) I had the incredible occasion to brainstorm and collaborate with some very great minds in the blockchain space. 

A recurring question was: "*How can we build a new cryptocurrency that offers a service?*". This gave me a lot to think about: [decentralized file storage](https://filecoin.io), [distributed computation](http://nicola.io/computation-coin/2017) and more generically [verifiable markets](http://nicola.io/verifiable-markets/2017).

During the past 6 months, the word **token** was all over the place; as the months passed different groups worked on many of the ideas/implementations that others and I discussed - what of an exciting time to live in.

In this blogpost, I am leaving some of my notes taken during the month of January.

### Dec 2016

During my Christmas vacation (Dec 2016) I started reading a [Github issue](https://github.com/ethereum/EIPs/issues/20) that was circulating on a few chats/forum. This is the proposal for ERC20 (the proposed standard) for tokens that most (if not all) of the new tokens built on Ethereum are now using. I did not get to understand the details of the ERC20 until a month after. However, the story of tokens goes really much earlier than this, with the idea of Colored Coins.

During this month I collected the following notes on: "How to create new tokens?" without running your own blockchain.

### Jan 2017

In my notes (sparse in github issues) I was writing the following categorizations, calling them "**Metacoins**". Whether they are of any help today, I am not sure; friends and I found this categorization really helpful back then:

 Note: off-chain, in-chain is relative to Ethereum:

- **In-chain Coin (or *Contract Coin*)**
  - **consensus**: Ethereum nodes agree on new blocks
  - **transaction validation**: Ethereum miners validate transactions of servicecoin during consensus step
  - **servicecoin fees/rewards**: servicecoin miners submit their valid proof of service that can validate by the Ethereum miners.
  - **needs**: ethereum to support verification of the proof of service

- **Off-chain Coin (or *Virtual Coin*)**
  - **consensus**: ethereum consensus orders the servicecoin request for payment in the chain
  - **transaction validation**: servicecoin miners read the ethereum chain and filter out transactions that are not necessary
  - **servicecoin fees/reward**: servicecoin miners add proof of service on the chain and consider that in their transaction validation
  - **needs**: a way to do atomic swaps across chains (e.g. spend servicecoin in eth contracts)
  - **problems**:
    - expensive proofs
    - clogging the chain

- **Hybrid Coin**:
  - evaluate ways in which we could use some basic properties of the chain: ordering, hash time lock
  - evaluate off-chain (log) + backup on ethereum (state) for trade offs with efficient proofs + delegation
