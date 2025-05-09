---
title: Typing Context
type: structure
---

A **typing context** ($\Gamma, \Delta$), is broadly a [[is-broadly:function|map]] that associates free variables with their respective [[part:Type|types]]. It is used to keep track of "known" variables and their types at a particular point in a program or proof.

For example, a context $\Gamma = [x:A, y:B]$ declares that the variable $x$ is assumed to have type $A$, and variable $y$ is assumed to have type $B$.

### Purpose:

Typing contexts are used programmatically for type checking and inference, and they are used when defining [[uses:Typing Rule|typing rules]] to determine the type of an [[uses:Expression|expression]] or to verify that an expression is well-typed.
