---
title: First Order Logic
type: structure
---

A **First Order Logic** (FOL) is a [[is-broadly:formal logic]] that builds on [[is-a:propositional logic]] (PL) in the sense that it is essentially propositional logic but with the additions of [[part:Predicate|Predicates]] and [[part:Quantifier|Quantifiers]]. FOL collectively is an umbrella term for many theories such as Integer Arithmetic, Real Arithmetic, Bit-Vector, Array, and Set Theory. First Order Logic is generally assumed to be classical (i.e. assumes principles like the [[mention:law of the excluded middle]]), and is thus equivalent to the [[equivalent:classic dependently typed lambda calculus]] via the [[mention:Curry-Howard Correspondence]]. Its constructive counterpart is [[uses:Intuitionistic First Order Logic]].

FOL adds the following structures to propositional logic, but the details of some of these structures depends on the specific FOL theory.
 - Sorts (sets of things)
 - [[part:Predicate|Predicates]]: Express properties of objects or relationships between objects (e.g., $P(x)$, $R(x, y)$).
 - Functions: Map objects to other objects (e.g., $f(x)$, $g(x, y)$).
 - [[part:Quantifier|Quantifiers]]:
    - [[part:Universal Quantifier|Universal Quantifier]]: $\forall x, P(x)$.
    - [[part:Existential Quantifier|Existential Quantifier]]: $\exists x, P(x)$.

Examples:
 - "All humans are mortal" $\rArr$ $\forall x. (\text{Human}(x) \rightarrow \text{Mortal}(x))$.
 - "Joey and Jill can become friends with anyone" $\rArr \forall p : \text{Person}. (\text{CanBecomeFriendsWith(Joey, p)} \land \text{CanBecomeFriendsWith(Jill, p)})$.
