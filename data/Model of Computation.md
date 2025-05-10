---
title: Model of Computation
type: structure
---

A **model of computation** is a formal, mathematical abstraction of computation. It defines a set of allowable operations and their effects, specifying how outputs are derived from inputs.

Different models capture different aspects or levels of computational power. Common examples include [[mention:finite automaton|finite automata]], [[mention:pushdown automaton]], [[mention:Turing Machine|turing machines]], and [[uses:Lambda Calculus|lambda calculi]]. Many models, like Turing machines and lambda calculus, are equivalent in power (Turing-complete) and define the limits of what is theoretically [[uses:Computable Function|computable]].

| Grammar                          | Automaton                            | Lambda Calculus Model                                                                                                                                                                         |
| :------------------------------- | :----------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Regular Grammar                  | [[mention:Finite Automaton]] (FA)    | A function from $\text{List[Bool]} \rightarrow \text{Bool}$ in the [[mention:Simply Typed Lambda Calculus]] [[cite:On the expressive power of simply typed and let-polymorphic lambda calculi | source]]                  |
| [[mention:Context-Free Grammar]] | [[mention:Pushdown Automaton]] (PDA) | Unknown                                                                                                                                                                                       |
| Context-Sensitive Grammar        | Linear Bounded Automaton (LBA)       | Unknown                                                                                                                                                                                       |
| Recursively Enumerable Grammar   | [[mention:Turing Machine]] (TM)      | [[mention:Lambda Calculus                                                                                                                                                                     | Untyped Lambda Calculus]] |
