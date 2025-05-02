---
title: Simply Typed Lambda Calculus
type: structure
---

The **Simply typed lambda calculus (STLC)** is a [[is-a:type theory]] that extends and restricts the [[uses:lambda calculus]] by assigning [[uses:type
|types]] to lambda terms.

In simply typed lambda calculus, every term has a unique type, and the type system enforces that functions are only applied to arguments of the correct type. This is achieved through type checking rules that verify the consistency of type assignments.

It is equivalent to [[equivalent:implicational intuitionistic propositional logic]] via the [[mention:Curry-Howard Correspondence]] where every type and term in STLC corresponds to a proposition and proof in STLC.

The types in STLC consist of the following primitives:
 - [[uses:Function Type]]

And the following typing rules, see the [[is-a:type theory|type theory page]] for more info on how these work.

Typing Rules:

$$\frac{\Gamma, x:A \vdash b : B}{\Gamma \vdash \lambda x.b : A \rightarrow B} \text{function}$$

$$\frac{\Gamma \vdash (\lambda x.b) : A \rightarrow B \quad \Gamma \vdash a : A}{\Gamma \vdash (\lambda x.b) a \rightarrow b[x:=a]} \text{beta-reduction}$$