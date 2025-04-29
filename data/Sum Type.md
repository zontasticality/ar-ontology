---
title: Sum Type
type: structure
---
A sum type, denoted as $A + B$ or `Either A B`, represents a value that can be either of type $A$ or of type $B$. Values of a sum type are typically tagged or constructed in a way that indicates which variant they belong to (e.g., `Left(a)` where `a` is of type A, or `Right(b)` where `b` is of type B).

Logically via the [[mention:Curry-Howard Correspondence]] sum types can be interpreted as $A \lor B$ or [[equivalent:logical disjunction]], meaning to prove $A \lor B$ you only need a proof of one or the other (and an indication of which one you used). Set-theoretically it can be interpreted as the disjoint union of sets $A$ and $B$. In category theory sum types correspond to coproducts.