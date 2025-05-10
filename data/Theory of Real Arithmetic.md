---
title: Theory of Real Arithmetic
type: structure
---
The **Theory of Real Arithmetic** is a [[is-a:First Order Logic Theory]] that formalizes reasoning about the properties of real numbers. It extends [[uses:First Order Logic]] with a specific signature and axioms for real numbers.

### Signature
-   **Sorts**: A sort for `Real` ($\mathbb{R}$).
-   **Constant symbols**: $0, 1$ and potentially other rational constants.
-   **Function symbols**:
    -   Addition: $+ : \text{Real} \times \text{Real} \rightarrow \text{Real}$
    -   Subtraction (or unary negation): $- : \text{Real} \rightarrow \text{Real}$ (unary) or $- : \text{Real} \times \text{Real} \rightarrow \text{Real}$ (binary)
    -   Multiplication: $\times : \text{Real} \times \text{Real} \rightarrow \text{Real}$
-   **Predicate symbols**:
    -   Equality: $= : \text{Real} \times \text{Real} \rightarrow \text{Bool}$
    -   Less than: $< : \text{Real} \times \text{Real} \rightarrow \text{Bool}$
