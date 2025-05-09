---
title: Intuitionistically Typed Lambda Calculus
type: structure
---
The **Intuitionistically typed lambda calculus (ITLC)** is a [[is-a:type theory]] and extension of [[is-a:simply-typed lambda calculus]] that, in addition to function types adds:

 - [[uses:Empty Type|Empty Types]]
 - [[uses:Unit Type|Unit Types]]
 - [[uses:Product Type|Product Types]]
 - [[uses:Sum Type|Sum Types]]
 - Negation: (can be constructed from Function type and Empty type)

The ITLC is not a standard term in the literature, but it does provide a core building block of other type theories.

It is equivalent to [[equivalent:intuitionistic propositional logic]] via the [[mention:Curry-Howard Correspondence]] where every type and term in ITLC corresponds to a proposition and proof in IPL.

Formally, the added rules can be described using the following sequent calculus declarations. (See more on the sequence calculus on the [[is-a:type theory|type theory page]])

$$\frac{}{\Gamma \vdash () : \text{Unit}} \text{unit}$$

$$\frac{}{\Gamma \vdash \text{absurd} : \text{Void} \rightarrow A } \text{absurd}$$

$$\frac{\Gamma \vdash a : A \quad \Gamma \vdash b : B}{\Gamma \vdash (a,b) : A \times B} \text{pair}$$

$$\frac{\Gamma \vdash t : A \times B}{\Gamma \vdash \text{fst}(t) : A} \text{fst}$$

$$\frac{\Gamma \vdash t : A \times B}{\Gamma \vdash \text{snd}(t) : B} \text{snd}$$

$$\frac{\Gamma \vdash a : A}{\Gamma \vdash \text{inl}(a) : A + B} \text{in-left}$$

$$\frac{\Gamma \vdash b : B}{\Gamma \vdash \text{inr}(b) : A + B} \text{in-right}$$

$$\frac{\Gamma \vdash s : A + B \quad \Gamma \vdash f : A \rightarrow C \quad \Gamma \vdash g : B \rightarrow C}{\Gamma \vdash \text{case}(s, f, g) : C} \text{case}$$
