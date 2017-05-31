---
layout: post
title:  "Idea: Computation Coin"
date:   2017-02-17 13:06:04
categories: Ideas
---

I am posting a draft written during the summer of 2017. I wrote this after reading the Versum paper and starting learning about verifiable computation. The idea here is to do faster off-chain contracts.

# Computation Coin (CoCo)

Delegate computations by creating bounties

## Motivations
1. Complex contracts are really expensive in Ethereum
2. Every ethereum miner runs every computation (too much waste!)
3. Use ideas from Refereed Multi-prover Delegated Computation (and Versum)
4. SNARK & other systems are too expensive (!!)

## Setting

- **Users**: they want to pay for computation
- **Computers**: they want to be rewarded for computing
- **Trust model**: this runs in the any trust model, if there is at least an honest computer running the computation, the computation is run correctly.

## Protocols
- `ComputationCoin`: Users can create computation bounties that Computers can solve.
- `ReputationContract`: Computers that misbehave are reported to ReputationContract and lose their reputation.

### Protocol 1: ComputationCoin Protocol

- `CreateComputation(code, timeout, minReputation)`:
  
  User writes a computation `code` (following Versum Guidelines). At `timeout` time, all the coins in the contract are given to the winning answer. In this contract, only miners with minReputation from ReputationContract can participate

- `FinanceComputation(coins)`:
  
  Any user can put coins into the contract to incentivize Computers to compute!

- `SolveComputation(ans, comm, coins)`:
  
  Computers solve the computation and submit the answers `ans`, a commitment to the computation history `comm`, a collateral `coins` required by the contract, this will be added to the total amount of coins in the contract.

- `ConfuteAnswer(ans, comm, coins, conflict)`:
  
  Computers can confute a previous answer by submitting their `ans`, a commitment to their computation history `comm`, a collateral `coins` required by the contract and the part of conflict between their answer and the previous submitter answer. (Note: this function call is only going to be added/processed by having the miners running “conflict”)

### Protocol 2: ReputationContract Protocol

If a computer is found to create an incorrect computation in the future, they can be referenced to a reputation contract, losing in this way reputation, so in the future Computation contract can set up some minimum reputation they require.

## Problems left

- Running arbitrary computation in a contract to detect conflict (this is a technical detail)
- (Actually important) How to keep computation history around and in an accountable way for a long time (they also might be long!!)
- Can we design this into an ethereum contract?
- Game theoretical analysis: what if EVERY computer is incentivized to misbehave?