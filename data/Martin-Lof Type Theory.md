---
title: Martin-Lof Type Theory
type: structure
---

**Martin-Lof Type Theory (MLTT)** is a foundational [[is-broadly:Type Theory]] developed by Per Martin-Lof that builds on the [[part:simply typed lambda calculus]] by adding dependent types, identity, types, universe types, and inductive types. It serves as a basis for modern proof assistants like Lean, Agda and Coq.

MLTT adds the following to the [[part:simply typed lambda calculus]] (some of it doesn't just add but also replaces).
- **Dependent Types**: Types that can depend on values.
    - **[[part:Pi Type|Π-types (Dependent Function Types)]]**: Generalizes [[uses:function type|function types]]. If $B(x)$ is a type for each $x:A$, then $\Pi x:A. B(x)$ is the type of functions that take an $x$ of type $A$ and return a term of type $B(x)$. This corresponds to universal quantification ($\forall x. P(X)$) under the [[mention:Curry-Howard Correspondence]].
    - **[[part:Sigma Type|Σ-types (Dependent Pair Types)]]**: Generalizes [[uses:product type|product types]]. If $B(x)$ is a type for each $x:A$, then $\Sigma x:A. B(x)$ is the type of pairs $(a,b)$ where $a:A$ and $b:B(a)$. This corresponds to existential quantification ($\exists x. P(X)$) under the [[mention:Curry-Howard Correspondence]].

- **Identity Types ($Id_A(x,y)$ or $x =_A y$)**: A type representing the proposition that $x$ is equal to $y$ (where $x, y : A$). Proofs of identity are terms of this type.
- **Universe Types ($U_0, U_1, \dots$)**: Types whose terms are themselves types. This allows for type-level computation and reasoning about types, forming a hierarchy to avoid paradoxes.
- **Inductive Types**: Rich ways to define data types like natural numbers, lists, trees, etc., along with their principle of induction.

MLTT is inherently constructive. A proof of a proposition (represented as a type) is a program (a term inhabiting that type). For example, to prove an existentially quantified statement (a Σ-type), one must construct a [[mention:expression|term]] to "inhabit" the existential type and prove that the existential property is true.

It is related to [[equivalent:Intuitionistic First Order Logic]] via the [[mention:Curry-Howard Correspondence]], but Martin-Loff is more general in a sense that most, if not all [[mention:first order logic theory|first order logic theories]] can be formulated using MLTT directly via inductive types instead of needing to be added via extra deduction rules.