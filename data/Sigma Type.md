---
title: Sigma Type
type: structure
---

A **Σ-type (Sigma-type)**, also known as a **dependent pair type** or **dependent sum type**, is a type constructor in [[uses:Type Theory|type theories]] with dependent types, such as [[uses:Martin-Lof Type Theory]].

Given a type $A$ and a family of types $B(x)$ indexed by terms $x : A$, the Σ-type, written as $\Sigma x:A. B(x)$ or $(x:A) \times B(x)$, represents the type of pairs $(a, b)$ where $a : A$ and $b : B(a)$. The type of the second component $B(a)$ *depends* on the value of the first component $a$.

Under the [[mention:Curry-Howard Correspondence]], Σ-types correspond to [[equivalent:existential quantifier]]s ($\exists$) in logic. A proof of $\exists x:A. P(x)$ is a pair consisting of a witness $a:A$ and a proof of $P(a)$.