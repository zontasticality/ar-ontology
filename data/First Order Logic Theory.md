---
title: First Order Logic Theory
type: structure
---
A **first order logic theory**, is a formal system that extends [[uses:First Order Logic]] with extra [[part:rule of inference|logical inference rules]]. These rules come in two flavors:

1. **Signature** ($\Sigma$): A set of non-logical symbols particular to the theory. This typically includes:
   - Constant symbols (e.g., $0, 1$ in arithmetic).
   - Function symbols (e.g., $+, \times$ in arithmetic, along ith their arities).
   - Predicate symbols (e.g., $\leq, =$ in arithmetic, along with their arities).
   - (Optionally, sorts if using many-sorted first-order logic, as seen in the examples within [[mention:First Order Logic]]).
   - These can be thought of as [[uses:Axiom]]s.

2. A collection of ways to construct more complicated formulas from basic symbols. Expressed as more inference rules.

A structure is considered a **model** of a first-order theory if it provides an interpretation for the symbols in the signature such that all axioms of the theory are true under that interpretation. Intuitively, this should be some kind of "physical realization" of a theory.

### Examples
Many specific logical systems are instances of first-order theories:
- **Integer Arithmetic**: [[mention:Theory of Integer Arithmetic]].
- **Theory of Real Arithmetic**: [[mention:Theory of Real Arithmetic]].
- **Zermelo-Fraenkel Set Theory (ZFC)**
- Theories used in [[mention:SMT Solver|SMT solvers]], such as:
  - **Arrays**: [[mention:Theory of Arrays]].
  - **Bit Vectors**: Theory of Bit Vectors.
  - **Uninterpreted Functions**: [[mention:Theory of Uninterpreted Functions]].