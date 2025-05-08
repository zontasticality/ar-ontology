---
title: Theory of Integer Arithmetic
type: structure
---
The **Theory of Integer Arithmetic** is a [[is-a:First Order Logic Theory]] that formalizes reasoning about the properties of integers. It extends [[uses:First Order Logic]] with a specific signature and axioms tailored to integers.

### Signature
The signature for the theory of integer arithmetic typically includes:
- **Sorts**: A sort for Integer ($\mathbb{Z}$).
- **Constant symbols**: $0, 1, -1, 2, -2, \dots$
- **Function symbols**:
    - Addition: $+ : \text{Integer} \times \text{Integer} \rightarrow \text{Integer}$
    - Negation: $- : \text{Integer} \rightarrow \text{Integer}$
    - Multiplication: $\times : \text{Integer} \times \text{Integer} \rightarrow \text{Integer}$
-   **Predicate symbols**:
    - Equality: $= : \text{Integer} \times \text{Integer} \rightarrow \text{Bool}$
    - Less than: $< : \text{Integer} \times \text{Integer} \rightarrow \text{Bool}$
    (Other relations like $>, \leq, \geq$ can be defined from these).

### Axioms
The axioms depend on the richness of the theory:
-   **Presburger Arithmetic**: Includes axioms for addition, constants, and order. Multiplication by constants is allowed, but not general multiplication between variables. It is decidable.
-   **Peano Arithmetic (PA)**: A more expressive theory that includes axioms for addition, multiplication, and induction. It is powerful enough to express many number-theoretic statements but is incomplete (by Gödel's incompleteness theorems) and undecidable.
-   **Linear Integer Arithmetic (LIA)**: Commonly used in [[mention:SMT Solver|SMT solvers]], this theory typically involves linear constraints (e.g., $2x + 3y \leq 5$).

Common axioms include properties like:
-   Associativity and commutativity of $+$ and $\times$.
-   Distributivity of $\times$ over $+$.
-   Properties of $0$ (identity for $+$) and $1$ (identity for $\times$).
-   Order axioms (transitivity, totality of $\leq$).
-   Axioms relating operations and order (e.g., $a \leq b \rightarrow a+c \leq b+c$).

### Usage
The theory of integer arithmetic is fundamental in mathematics, computer science for program verification, constraint solving, and automated theorem proving. [[mention:SMT Solver|SMT solvers]] often incorporate decision procedures for fragments of integer arithmetic.