---
title: Lambda Calculus
type: structure
---

The **lambda calculus** (λ-calculus) is a particular type of [[is-a:expression]] or more broadly, a [[is-broadly:well-formed formula]] in some [[mention:formal grammar]] that encodes computation using function abstraction, variable binding, application, and substitution.

It is a universal [[is-a:Model of Computation]], equivalent in power to [[mention:Turing Machine|Turing machines]].

Fun fact: when implementing the lambda calculus, it can be encoded as a [[mention:data type]] like as follows:
```rust
enum LambdaExpression {
	Variable { name : String }
	Abstraction { bound : String, body: LambdaExpression }
	Application { left: LambdaExpression, right: LambdaExpression }
}
```