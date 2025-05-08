---
title: Theory of Sets
type: structure
---
The **Theory of Sets**, most commonly referring to **Zermelo-Fraenkel set theory with the Axiom of Choice (ZFC)**, is a [[is-a:First Order Logic Theory]] that provides a foundational framework for mathematics. It extends [[uses:First Order Logic]] to define and reason about sets.

### Signature
-   **Sorts**: Implicitly, a single sort for "sets" (in ZFC, everything is a set).
-   **Predicate symbols**:
    -   Set membership: $\in$ (binary predicate, $x \in y$ means "$x$ is an element of $y$").
    -   Equality: $=$ (binary predicate, often considered part of the underlying logic but its properties with respect to sets are crucial).
-   There are no constant or function symbols in the pure signature of ZFC; concepts like the empty set $\emptyset$ or operations like union $\cup$ are defined from the axioms.

See also the brief mention in [[mention:First Order Logic#Set Theory]].

### Axioms
1.  **Axiom of Extensionality**: Two sets are equal if and only if they have the same elements.
    $\forall x \forall y (\forall z (z \in x \leftrightarrow z \in y) \rightarrow x = y)$
2.  **Axiom of Empty Set**: There exists a set with no elements.
    $\exists x \forall y (\neg (y \in x))$
3.  **Axiom of Pairing**: For any two sets $a$ and $b$, there exists a set $\{a, b\}$ containing exactly $a$ and $b$.
    $\forall a \forall b \exists x \forall y (y \in x \leftrightarrow (y=a \lor y=b))$
4.  **Axiom of Union**: For any set $F$ (a set of sets), there exists a set $U$ containing exactly all elements of the elements of $F$.
    $\forall F \exists U \forall x (x \in U \leftrightarrow \exists Y (x \in Y \land Y \in F))$
5.  **Axiom of Power Set**: For any set $X$, there exists a set $P$ containing all subsets of $X$.
    $\forall X \exists P \forall Y (Y \in P \leftrightarrow \forall z (z \in Y \rightarrow z \in X))$
6.  **Axiom of Infinity**: There exists an infinite set (specifically, a set containing $\emptyset$ and closed under the successor operation $S(x) = x \cup \{x\}$).
    $\exists X (\emptyset \in X \land \forall y (y \in X \rightarrow y \cup \{y\} \in X))$
7.  **Axiom Schema of Replacement**: If $F$ is a function defined by a formula $\phi(x,y)$ (such that for each $x$ in a set $A$, there is a unique $y$ with $\phi(x,y)$), then the image $\{F(x) | x \in A\}$ is a set.
8.  **Axiom Schema of Specification (or Separation/Restricted Comprehension)**: For any set $A$ and any property $P(x)$ definable by a formula, there exists a subset of $A$ containing exactly those elements $x \in A$ for which $P(x)$ holds. (This is often derivable from Replacement).
9.  **Axiom of Regularity (or Foundation)**: Every non-empty set $X$ contains an element $y$ such that $X$ and $y$ are disjoint ($X \cap y = \emptyset$). This prevents sets like $x \in x$.
10. **Axiom of Choice (AC)**: For any collection of non-empty sets, there exists a choice function that selects one element from each set. (There are many equivalent formulations).

### Usage
ZFC is the standard axiomatic foundation for most of modern mathematics. While not directly implemented in its full power in typical [[mention:SMT Solver|SMT solvers]] due to its complexity and undecidability, fragments or specialized theories of sets/collections are sometimes used.