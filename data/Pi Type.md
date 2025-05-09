---
title: Pi Type
type: structure
---

A **Π-type (Pi-type)**, also known as a **dependent function type** or **dependent product type**, is a type constructor in [[uses:Type Theory|type theories]] with dependent types, such as [[uses:Martin-Lof Type Theory]].

Given a type $A$ and a family of types $B(x)$ indexed by terms $x : A$, the Π-type, written as $\Pi x:A. B(x)$ or $(x:A) \rightarrow B(x)$, represents the type of functions that take a term $a : A$ and return a term of type $B(a)$. The return type $B(a)$ *depends* on the input value $a$.

Under the [[mention:Curry-Howard Correspondence]], Π-types correspond to [[equivalent:universal quantifier]]s ($\forall$) in logic. A proof of $\forall x:A. P(x)$ is a function that, given any $a:A$, produces a proof of $P(a)$.