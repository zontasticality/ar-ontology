---
title: Negation Type
type: structure
---

**Negation types**, denoted as $\neg A$ or `Not A`, represent the negation of a type $A$. They are constructed as function types from $A$ to the [[uses:Empty Type|empty type]] $\bot$, i.e., $A \rightarrow \bot$.

Logically via the [[mention:Curry-Howard Correspondence]] negation types can be interpreted as logical negation, meaning to prove $\neg A$ you need a proof that given a proof of $A$ you can construct a proof of $\bot$ (i.e. a contradiction). Set-theoretically, if $A$ is a set, $\neg A$ can be thought of as the set of functions from $A$ to the empty set.
