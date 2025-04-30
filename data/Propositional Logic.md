---
title: Propositional Logic
type: structure 
---

**Propositional Logic** is simply the [[is-a:intuitionistic propositional logic]] combined with the [[uses:law of the excluded middle]], or double negation elimination (they are equivalent axioms), enabling proofs by contradiction.

I.e. adding either of these rules of inference encoding the LEM/double negation axiom:

$$\frac{}{\Gamma \vdash A \lor \neg A} \text{LEM}$$
$$\frac{}{\Gamma \vdash \neg \neg A \rightarrow A} \text{double-neg}$$
