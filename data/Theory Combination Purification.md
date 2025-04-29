---
title: Nelson-Oppen Theory Combination Algorithm
type: algorithm
---
Theory Nelson-Oppen theory combination algorithm is a technique used in SMT solvers to handle formulae involving multiple logical theories (e.g. arithmetic and uninterpreted functions). The core idea is to separate a mixed-theory formula into formulas that are only in one theory, connecting them via new variables.

This is achieved by:
1.  Identifying terms that mix symbols from different theories (e.g. $f(x+1)$: $f(...)$ is uninterpreted, $x + 1$ is arithmetic).
2.  Introducing "fresh" variables to represent these subterms within a clause belonging to a specific theory.
3.  Adding interface equality constraints that link these new variables back to the original terms they replaced.

Example: $f(x+1) = y$ might be reduced into two parts:
   - Theory A (Arithmetic): `v = x+1`
   - Theory B (Uninterpreted Functions): `f(v) = y`
   (where `v` is a new shared variable)

This separation allows each theory's solver to independently check the separate parts, deriving new clauses/equalities, until we derive a contradiction or we find a valid assignment.