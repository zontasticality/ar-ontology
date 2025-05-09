---
title: Intuitionistic First Order Logic
type: structure
---

**Intuitionistic First Order Logic (IFOL)** is a [[is-broadly:Formal Logic]] that extends [[part:Intuitionistic Propositional Logic]] with quantifiers over individuals, but without assuming the [[mention:Law of the Excluded Middle]] or its equivalents for quantified statements. It provides a constructive interpretation of logical connectives and quantifiers.

### Differences from Traditional First Order Logic:
1.  **Constructive Existence**: To prove $\exists x. P(x)$ in IFOL, one must provide a specific term $t$ (a witness) and a proof of $P(t)$. It's not enough to show that the non-existence of such an $x$ leads to a contradiction.
2.  **No Law of Excluded Middle for Quantifiers**: The statement $\forall x. (P(x) \lor \neg P(x))$ is not generally a theorem in IFOL. Similarly, $\neg (\forall x. P(x)) \leftrightarrow (\exists x. \neg P(x))$ holds in one direction ($\exists x. \neg P(x) \rightarrow \neg \forall x. P(x)$) but the other direction ($\neg \forall x. P(x) \rightarrow \exists x. \neg P(x)$) is not generally provable.

### Relationship to Type Theory
Intuitionistic First Order Logic is [[equivalent:Martin-Lof Type Theory]] under the [[mention:Curry-Howard Correspondence]]. Propositions in IFOL correspond to types in MLTT, and proofs in IFOL correspond to terms (programs) in MLTT.