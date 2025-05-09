---
title: Universal Quantifier
type: structure
---

The **universal quantifier**, denoted by the symbol $\forall$ (an inverted "A", meaning *AAAAAAAAAAll*), is a type of [[is-a:Quantifier|quantifier]] used in [[uses:First Order Logic|first-order logic]] and other predicate logics. It expresses that a certain property or relation holds for *every* member of the domain of discourse.

The expression $\forall x, P(x)$ is read as "for all $x$, $P(x)$ is true" or "for every $x$, $P(x)$ holds."
Here, $P(x)$ is a predicate, and $x$ is a variable bound by the quantifier. The statement $\forall x, P(x)$ is true if and only if $P(x)$ is true for every possible value of $x$ from the domain. If there is even one value of $x$ for which $P(x)$ is false, then $\forall x, P(x)$ is false.

Under the [[mention:Curry-Howard Correspondence]], the universal quantifier $\forall$ corresponds to [[equivalent:Pi Type|Π-types (dependent function types)]] in type theory. A proof of $\forall x:A. P(x)$ is a function that, given any term $a$ of type $A$, produces a proof of $P(a)$.