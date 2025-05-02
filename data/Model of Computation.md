---
title: Model of Computation
type: structure
---

A model of computation is a formal, mathematical abstraction of computation. It defines a set of allowable operations and their effects, specifying how outputs are derived from inputs.

Different models capture different aspects or levels of computational power. Common examples include [[mention:finite automaton|finite automata]], [[mention:pushdown automata]], [[mention:Turing Machine|turing machines]], and [[uses:Lambda Calculus|lambda calculi]]. Many models, like Turing machines and lambda calculus, are equivalent in power (Turing-complete) and define the limits of what is theoretically [[uses:Computable Function|computable]].

TODO: Improve the lambda calculus model column here

| Grammar                          | Automaton                            | Lambda Calculus Model              |
| :------------------------------- | :----------------------------------- | :--------------------------------- |
| Regular Grammar                  | [[mention:Finite Automaton]] (FA)    | Lambda Calculus (can simulate FA)  |
| [[mention:Context-Free Grammar]] | [[mention:Pushdown Automaton]] (PDA) | Lambda Calculus (can simulate PDA) |
| Context-Sensitive Grammar        | Linear Bounded Automaton (LBA)       | Lambda Calculus (can simulate LBA) |
| Recursively Enumerable Grammar   | Turing Machine (TM)                  | Lambda Calculus (equivalent)       |
