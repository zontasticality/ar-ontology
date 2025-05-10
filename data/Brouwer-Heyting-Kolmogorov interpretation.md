---
title: Brouwer-Heyting-Kolmogorov interpretation
type: argument
---

The Brouwer-Heyting-Kolmogorov interpretation [[cites:LogicOfBHK | source]] is most often interpreted as the basis for intuitionist logic. It defines truth constructively, meaning a proposition is true only if we can construct a proof of it. It follows that both the [[uses:Law of Excluded Middle]] and double negation are rejected, as the former claims every mathematical proof has a solution, and the latter claims that every consistent mathematical statement holds, according to Brouwer. Basically, in the BHK interpretation, "proving" things is much more concrete, and therefore, it is harder to do, but more useful.

This way of looking at truth and proof corresponds cleanly with dependent types, also known as [[mention:Sigma Type]], since they require the same amount of constructive evidence that the BHK interpretation demands. They naturally model quantified statements and logical implications as types. 

This is in contrast to Tarksian semantics, championed by Alfred Tarksi, which defines truth in terms of correspondence with an [[uses:Theory]]. In other words, every proposition is true or false, regardless of our ability to prove it, determined by the "model" (see Theory link) applied to the symbols used. This is the basis of classical logic, which explains why dependent types are unintuitive from this perspective. 

Implementations of the BHK interpretation include [[mention:Implicational Intuitionistic Propositional Logic]], [[mention:Intuitionistic Propositional Logic]], but most commonly and foundationally, [[mention:Martin-Lof Type Theory]]

