---
title: First Order Logic Theory
type: structure
---
A **first order logic theory**, is a formal system that extends [[uses:First Order Logic]] to formalize reasoning about a specific domain or subject matter. It achieves this by specifying:

1. A **Signature** ($\Sigma$): A set of non-logical symbols particular to the theory. This typically includes:
   - Constant symbols (e.g., $0, 1$ in arithmetic).
   - Function symbols (e.g., $+, \times$ in arithmetic, along ith their arities).
   - Predicate symbols (e.g., $\leq, =$ in arithmetic, along with their arities).
   - (Optionally, sorts if using many-sorted first-order logic, as seen in the examples within [[mention:First Order Logic]]).

2. A set of **Axioms** ($A$): A collection of [[uses:Logical Formula|sentences]] (formulas with no free variables) constructed using the symbols from the signature and the logical symbols of First Order Logic. These axioms are the fundamental assumptions or truths of the theory, constraining the possible interpretations of the signature's symbols.

A structure is considered a **model** of a first-order theory if it provides an interpretation for the symbols in the signature such that all axioms of the theory are true under that interpretation. Intuitively, this should be some kind of "physical realization" of a theory.

First-order theories provide the axiomatic basis for many branches of mathematics and computer science.

### Examples
Many specific logical systems are instances of first-order theories:
- **Integer Arithmetic**: [[mention:Theory of Integer Arithmetic]].
- **Theory of Real Arithmetic**: [[mention:Theory of Real Arithmetic]].
- **Zermelo-Fraenkel Set Theory (ZFC)**
- Theories used in [[mention:SMT Solver|SMT solvers]], such as:
  - **Arrays**: [[mention:Theory of Arrays]].
  - **Bit Vectors**: Theory of Bit Vectors.
  - **Uninterpreted Functions**: [[mention:Theory of Uninterpreted Functions]].