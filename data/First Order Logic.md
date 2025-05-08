---
title: First Order Logic
type: structure
---

A **First Order Logic** (FOL) is a [[is-a:Logical Framework]] that builds on [[uses:propositional logic]] (PL) in the sense that it is essentially propositional logic but with the additions of [[uses:Predicates]] and [[uses:Quantifiers]]. FOL collectively is an umbrella term for many theories such as Integer Arithmetic, Real Arithmetic, Bit-Vector, Array, and Set Theory. FOL is equivalent to the [[equivalent:dependently-typed lambda calculus]].

First-order logic (FOL), also known as predicate logic, is a [[is-a:logical framework]] that extends [[uses:propositional logic]] by introducing quantifiers and predicates, allowing for reasoning about objects and their relationships. 

FOL adds the following structures to propositional logic.
 - Sorts (sets of things)
 - Predicates: Express properties of objects or relationships between objects (e.g., $P(x)$, $R(x, y)$).
 - Functions: Map objects to other objects (e.g., $f(x)$, $g(x, y)$).
 - Universal Quantifier: $\forall x, P(x)$.
 - Existential Quantifier: $\exists x, P(x)$.

Examples:
 - "All humans are mortal" $\rArr$ $\forall x. (\text{Human}(x) \rightarrow \text{Mortal}(x))$.
 - "Joey and Jill can become friends with anyone" $\rArr \forall p : \text{Person}. (\text{CanBecomeFriendsWith(Joey, p)} \land \text{CanBecomeFriendsWith(Jill, p)})$.

TODO: Make these their own nodes.

Links to various theories of first order logic can be found [[mention:First Order Logic Theory|here]]: