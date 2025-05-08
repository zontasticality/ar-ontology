---
title: Theory of Uninterpreted Functions
type: structure
---
The **Theory of Uninterpreted Functions (TUF)**, a.k.a. the **Theory of Equality with Uninterpreted Functions (EUF)**, is a [[is-a:First Order Logic Theory]] that deals with function symbols whose interpretation is not constrained beyond basic functional consistency. It extends [[uses:First Order Logic]] by allowing function symbols without specific axiomatic definitions for their behavior (like `+` in arithmetic).

### Signature
The signature for TUF can include:
-   **Sorts**: One or more sorts for the domain and codomain of functions.
-   **Constant symbols**: Any constant symbols.
-   **Function symbols**: A set of function symbols $f, g, h, \dots$, each with a fixed arity (e.g., $f: S_1 \times \dots \times S_n \rightarrow S_0$). These functions are "uninterpreted" meaning their specific mapping is not defined by the theory.
-   **Predicate symbols**: The primary predicate is usually **equality** ($=$). Other predicate symbols can also be uninterpreted.

### Axioms
The core axiom of the theory of uninterpreted functions is **functional consistency (or congruence)**:
For any $n$-ary function symbol $f$:
$\forall x_1, \dots, x_n, y_1, \dots, y_n . ( (x_1 = y_1 \land \dots \land x_n = y_n) \rightarrow f(x_1, \dots, x_n) = f(y_1, \dots, y_n) )$

This axiom states that if all arguments to a function are pairwise equal, then the function applications must also be equal.

If uninterpreted predicates $P$ are present, a similar axiom applies:
$\forall x_1, \dots, x_n, y_1, \dots, y_n . ( (x_1 = y_1 \land \dots \land x_n = y_n) \rightarrow (P(x_1, \dots, x_n) \leftrightarrow P(y_1, \dots, y_n)) )$

Additionally, the standard axioms of equality (reflexivity, symmetry, transitivity) are assumed.

### Usage
The theory of uninterpreted functions is fundamental in automated reasoning and [[mention:SMT Solver|SMT solvers]] because:
1.  **Abstraction**: It allows abstracting away the concrete details of complex functions while preserving essential properties related to equality. For example, a complex hash function can be modeled as an uninterpreted function if only its property of mapping equal inputs to equal outputs is relevant.
2.  **Combination with Other Theories**: TUF is often the base theory upon which other theories (like arithmetic, arrays) are built or combined using frameworks like [[mention:Nelson-Oppen Theory Combination Algorithm|Nelson-Oppen]].
3.  **Decidability**: The quantifier-free fragment of TUF is efficiently decidable.

It's used extensively in program verification to model operations whose precise definitions are not needed for a particular proof, or to establish equivalences between program fragments.