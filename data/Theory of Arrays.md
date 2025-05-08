---
title: Theory of Arrays
type: structure
---
The **Theory of Arrays** is a [[is-a:First Order Logic Theory]] designed for reasoning about array data structures. It extends [[uses:First Order Logic]] with specific sorts, function symbols, and axioms to model array operations. This theory is extensively used in [[mention:SMT Solver|SMT solvers]] for program verification.

### Signature
The signature for the (extensional) theory of arrays typically includes:
-   **Sorts**:
    -   `Index`: The type of array indices (e.g., integers, bit-vectors).
    -   `Value`: The type of elements stored in the array.
    -   `Array`: The type of arrays, often conceived as maps from `Index` to `Value`.
-   **Function symbols**:
    -   `select` (or `read`): $\text{select} : \text{Array} \times \text{Index} \rightarrow \text{Value}$
        -   Returns the value stored at a given index in an array.
    -   `store` (or `write`): $\text{store} : \text{Array} \times \text{Index} \times \text{Value} \rightarrow \text{Array}$
        -   Returns a new array that is identical to the input array except at the given index, where it stores the new value.
-   **Predicate symbols**:
    -   Equality for arrays ($=_A$) is often part of the theory, especially for extensional arrays.

The signature details are also outlined in [[mention:First Order Logic#Array]].

### Axioms (McCarthy Axioms)
The core of the theory of arrays is defined by the McCarthy axioms:
1.  **Read-over-write 1 (select-of-store 1)**: Reading at an index $i$ from an array that was just written to at the same index $i$ yields the value that was written.
    $\forall a:\text{Array}, i:\text{Index}, v:\text{Value} . (\text{select}(\text{store}(a, i, v), i) = v)$
2.  **Read-over-write 2 (select-of-store 2)**: Reading at an index $j$ from an array that was just written to at a different index $i$ (where $i \neq j$) yields the same value as reading from the original array at index $j$.
    $\forall a:\text{Array}, i,j:\text{Index}, v:\text{Value} . (i \neq j \rightarrow \text{select}(\text{store}(a, i, v), j) = \text{select}(a, j))$

**Optional Axiom of Extensionality**:
If two arrays are different, then there must be an index at which their contents differ. Equivalently, if two arrays agree on all indices, they are equal.
$\forall a,b:\text{Array} . ((\forall i:\text{Index} . \text{select}(a,i) = \text{select}(b,i)) \rightarrow a =_A b)$
SMT solvers may support arrays with or without extensionality. Non-extensional arrays are simpler to handle but less expressive.

### Usage
The theory of arrays is fundamental for verifying properties of programs that manipulate array-like data structures. [[mention:SMT Solver|SMT solvers]] provide efficient decision procedures for this theory, often in combination with other theories like integer arithmetic (for array indices) or bit-vectors.