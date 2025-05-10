---
title: Existential Quantifier
type: structure
---

The **existential quantifier**, denoted by the symbol $\exists$ (a left-to-right reflected "E"), is a type of [[is-a:Quantifier|quantifier]] used in [[uses:First Order Logic|first-order logic]] and other predicate logics. It expresses that there is *at least one* member of the domain of discourse for which a certain property or relation holds.

The expression $\exists x. P(x)$ is read as "there exists an $x$ such that $P(x)$ is true" or "for some $x$, $P(x)$ holds."
Here, $P(x)$ is a predicate, and $x$ is a variable bound by the quantifier. The statement $\exists x. P(x)$ is true if and only if there is at least one value of $x$ from the domain for which $P(x)$ is true. If $P(x)$ is false for every value of $x$ in the domain, then $\exists x. P(x)$ is false.

Under the [[mention:Curry-Howard correspondence]], the existential quantifier $\exists$ corresponds to [[equivalent:Sigma Type|Σ-types (dependent pair types)]] in [[mention:Martin-Lof type theory|dependent type theory]]. A proof of $\exists x : A. P(x)$ is a pair consisting of a witness $a$ of type $A$ and a proof of $P(a)$.
