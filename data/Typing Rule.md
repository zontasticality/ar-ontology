---
title: Typing Rule
type: structure
---

A **typing rule** is a fundamental component any  [[part:type theory]] or system. They are a set of formal inference rules that define how to determine or assign a [[uses:Type]] to an [[uses:Expression|expression]]. Typing rules specify the conditions under which an expression is considered well-typed. They are the type-theory equivalent of logical [[equivalent:rule of inference|rules of inference]].

## Form

 - $\Gamma$ is a typing context
 - $x : A$ $(\lambda x. b) : A \rightarrow B$ is a judgement

$$\frac{\Gamma, x:A \vdash b : B}{\Gamma \vdash \lambda x.b : A \rightarrow B} \text{function-intro}$$

Read: If you can somehow derive through application of other typing rules the judgement $b : B$ from a context $\Gamma$ with the judgement $x : A$, you are allowed to derive $\lambda x . b : A \rightarrow B$ from the same context.

$$\frac{\Gamma \vdash (\lambda x.b) : A \rightarrow B \quad \Gamma \vdash a : A}{\Gamma \vdash (\lambda x.b) a \rightarrow b[x:=a]} \text{function-elim}$$

Read: If you can somehow independently derive both judgements $(\lambda x.b) : A \rightarrow B$ and $a : A$ from a context $\Gamma$ you are allowed to derive a judgement of $( (\lambda x . b) \; a) : B$ from the same context, and its reduced form $b[x:=a]$ where all free variables $x$ in $b$ are replaced with $a$.

Generally typing rules come in a few variants: "intro rules" which define a new term of some type and "elimination rules" which define how the constructed term can be used in some manner.

For most type systems there are only a couple of judgements: (term of type, A is a type, etc.). (TODO)

## Examples 

Specific examples of typing rules can be found in various type theories, such as:
-   [[mention:Simply Typed Lambda Calculus]]
-   [[mention:Intuitionistically-Typed Lambda Calculus]]
