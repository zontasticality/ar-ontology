---
title: Empty Type
type: structure
---
The empty type, denoted as $\bot$, `Void`, `Never`, `0`, or `!` is a [[is-a:type]] that contains no terms. It is impossible to construct an instance (i.e. inhabitant) of the empty type.

Under the [[mention:Curry-Howard Correspondence]] (BHK interpretation), the empty type corresponds directly to [[equivalent:False|falsity]]. Just as there is no proof for the proposition [[uses:false]], there are no inhabitants (values) for the empty type. A function that claims to return the empty type (e.g., `f : A -> Void`) signifies that the function can never actually be called with a valid value of type `A` (if the system is consistent), or that it never terminates normally (e.g., it loops forever or throws an exception). This is how [[mention:Negation Type|negation]] is defined, as the existence of a function from $A \rarrow Void$ implies that it can never be evaluated, meaning that A must also be an empty type and therefore false.

Set-theoretically it can be thought of as the empty set.
