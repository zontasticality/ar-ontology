---
title: Simply Typed Lambda Calculus
type: structure
---

The **Simply typed lambda calculus (STLC)** is a [[is-a:type theory]] that extends and restricts the [[uses:lambda calculus]] by assigning [[uses:type
|types]] to lambda terms.

In simply typed lambda calculus, every term has a unique type, and the type system enforces that functions are only applied to arguments of the correct type. This is achieved through type checking rules that verify the consistency of type assignments.

It is equivalent to [[equivalent:intuitionistic propositional logic]] via the [[mention:Curry-Howard Correspondence]] where every type and term in STLC corresponds to a proposition and proof in STLC.

The types in STLC consist of the following primitives:
 - [[uses:Unit Type]]
 - [[uses:Empty Type]]
 - [[uses:Function Type]]
 - [[uses:Pair Type]]
 - [[uses:Sum Type]]

And the following typing rules, see the [[is-a:type theory|type theory page]] for more info on how these work.

Primitives:
$$\frac{}{\Gamma \vdash () : \top} \text{unit}$$
$$\frac{\Gamma \vdash A \quad \Gamma \vdash A \rightarrow \bot}{\Gamma \vdash \text{void} : \bot} \text{void}$$

Constructions:
$$\frac{\Gamma, x:A \vdash b : B}{\Gamma \vdash \lambda x.b : A \rightarrow B} \text{function}$$

$$\frac{\Gamma \vdash a : A \quad \Gamma \vdash b : B}{\Gamma \vdash (a, b) : A \times B} \text{pair}$$

$$\frac{\Gamma \vdash a : A}{\Gamma \vdash \text{inl}(a) : A \lor B} \text{in-left}$$

$$\frac{\Gamma \vdash b : B}{\Gamma \vdash \text{inr}(b) : A \lor B} \text{in-right}$$

Computation:

$$\frac{\Gamma \vdash (\lambda x.b) : A \rightarrow B \quad \Gamma \vdash a : A}{\Gamma \vdash (\lambda x.b) a \rightarrow b[x:=a]} \text{beta-reduction}$$

$$\frac{\Gamma \vdash c : A \times B}{\Gamma \vdash \text{fst}(c) : A} \text{fst}$$
$$\frac{\Gamma \vdash c : A \times B}{\Gamma \vdash \text{snd}(c) : B} \text{snd}$$