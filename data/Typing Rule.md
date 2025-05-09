---
title: Typing Rule
type: structure
---

A **typing rule** is a fundamental component any  [[part:type theory]] or system. They are a set of formal inference rules that define how to determine or assign a [[uses:Type]] to an [[uses:Expression|expression]]. Typing rules specify the conditions under which an expression is considered well-typed. They are the type-theory equivalent of logical [[equivalent:rule of inference|rules of inference]].
A **typing rule** is a fundamental component of any [[part:type theory]] or system. It is a formal inference rule** that defines how to determine or assign a [[uses:type]] to an [[uses:Expression|expression]]. Typing rules specify the conditions under which an expression is considered well-typed. They are the type-theory equivalent of logical [[equivalent:rule of inference|rules of inference]].

## Form
Typing rules are inference rules that typically take the following structure:
$$ \frac{\text{Premise}_1 \quad \text{Premise}_2 \quad \dots \quad \text{Premise}_n}{\text{Conclusion}} \quad (\text{Rule Name}) $$
This means that if all premises (judgements above the line) are true, then the conclusion (the judgement below the line) can be derived.

Judgements are statements about expressions, types, and contexts. The most common form of judgement used in this ontology so far is the typing judgement:
 - $\Gamma \vdash e : T$
This asserts that in the [[uses:typing context]] $\Gamma$, the expression $e$ has type $T$. A typing context $\Gamma$ is a list of assumptions about the types of free variables, e.g., $[x_1:A_1, x_2:A_2]$.

Here are two fundamental examples of typing rules, for function introduction and elimination:

$$\frac{\Gamma, x:A \vdash b : B}{\Gamma \vdash \lambda x.b : A \rightarrow B} \text{function-intro}$$

*Read*: If, in a context $\Gamma$ extended with the assumption that variable $x$ has type $A$, it can be derived that term $b$ has type $B$, then it can be derived that the lambda abstraction $\lambda x.b$ has the function type $A \rightarrow B$ in the original context $\Gamma$. This rule introduces a term of a function type.

$$\frac{\Gamma \vdash f : A \rightarrow B \quad \Gamma \vdash a : A}{\Gamma \vdash (f a) : B} \text{function-elim (or app)}$$

*Read*: If it can be derived in context $\Gamma$ that term $f$ has a function type $A \rightarrow B$, and it can also be derived in context $\Gamma$ that term $a$ has type $A$ (the argument type), then it can be derived that the application $(f a)$ has type $B$ (the result type) in the same context $\Gamma$. This rule *eliminates* (or uses) a term of a function type.

Generally, typing rules come in pairs:
-   **Introduction rules** (like `function-intro`) define how to construct or form a term of a particular type.
-   **Elimination rules** (like `function-elim`) define how a term of a particular type can be used or deconstructed.
-   Sometimes you also have "computation rules" as well.

While the examples above primarily use the **term typing judgement** ($\Gamma \vdash e : T$), more complex type systems involve other forms of judgements, such as:
-   **Type Formation**: $\Gamma \vdash A \; \text{type}$ (In context $\Gamma$, $A$ is a well-formed type).
-   **Type Equivalence**: $\Gamma \vdash A \equiv B \; \text{type}$ (In context $\Gamma$, types $A$ and $B$ are equivalent).
-   **Term Equivalence**: $\Gamma \vdash t \equiv u : A$ (In context $\Gamma$, terms $t$ and $u$ are equivalent and have type $A$).

The specific set of judgements and rules defines the particular type theory.

## Examples 

Specific examples of typing rules can be found in various type theories, such as:
-   [[mention:Simply Typed Lambda Calculus]]
-   [[mention:Intuitionistically-Typed Lambda Calculus]]
-   [[mention:Classically Typed Lambda Calculus]]
-   [[mention:Martin-Lof Type Theory]]
