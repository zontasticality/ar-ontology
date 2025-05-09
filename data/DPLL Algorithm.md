---
title: DPLL Algorithm
type: algorithm
---

The **DPLL algorithm** is an algorithm for [[uses:propositional formula|propositional]] [[is-a:satisfiability solver|satisfiability solving]]. It is a backtracking-based search algorithm designed to determine the satisfiability of a [[uses:propositional formula]] in [[uses:Conjunctive Normal Form (CNF)|conjunctive normal form (CNF)]].

### How it Works

The algorithm systematically explores the space of all possible combinations of truth [[uses:Assignment|assignments]] for each of the variables in the formula. It operates through a recursive process involving three main steps:

1.  **Unit Propagation (or 1-literal rule):**
    *   If a clause in the formula is a *unit clause* (i.e., it contains only a single unassigned literal), that literal must be assigned a truth value that makes the clause true.
    *   For example, if we have a clause `(A ∨ ¬B)` and `B` is assigned `True`, then `¬B` is `False`. The clause becomes `(A ∨ False)`, which simplifies to `(A)`. Now, `A` must be assigned `True`.
    *   If the literal is `P`, assign `P = True`.
    *   If the literal is `¬P`, assign `P = False`.
    *   This assignment can, in turn, make other clauses unit clauses. The process is repeated until no more unit clauses can be found or a conflict is detected.
    *   If unit propagation leads to an explicit contradiction (e.g., requiring `P` to be `True` and `P` to be `False`, or deriving an empty clause which signifies [[uses:False]]), the current path of assignments is unsatisfiable, and the algorithm must backtrack.

2.  **Pure Literal Elimination (or Pure Literal Rule):**
    *   A literal is *pure* if its corresponding variable appears with only one polarity (either always positive or always negative) throughout all *currently unsatisfied* clauses.
    *   For example, if `P` appears only as `P` (and never `¬P`) in the remaining clauses, `P` is a pure positive literal. If `Q` appears only as `¬Q` (and never `Q`), `Q` is a pure negative literal.
    *   Assign the pure literal a truth value that makes it true.
        *   If `P` is pure positive, assign `P = True`.
        *   If `¬P` is pure (meaning `P` is pure negative), assign `P = False`.
    *   This assignment satisfies all clauses containing the pure literal without making any other clause false. This step can simplify the formula significantly. While effective, this step is sometimes omitted in modern implementations for various reasons.

3.  **Decision (or Branching/Splitting Rule):**
    *   If neither unit propagation nor pure literal elimination can be applied (i.e., there are no unit clauses and no pure literals, and the formula is not yet satisfied or determined unsatisfiable), the algorithm must make a guess.
    *   An unassigned variable is chosen (this is called the *decision variable*).
    *   The algorithm then recursively tries assigning it `True`.
        *   If this leads to a satisfying assignment (the recursive call returns "satisfiable"), then the original formula is satisfiable.
    *   If assigning `True` leads to a contradiction (the recursive call returns "unsatisfiable"), the algorithm backtracks: it undoes the assignment (and any consequences from unit propagation based on that assignment) and then recursively tries assigning the decision variable `False`.
        *   If this second recursive call leads to a satisfying assignment, the original formula is satisfiable.
    *   If both assignments (`True` and `False`) for the chosen variable lead to contradictions, then the formula is unsatisfiable under the assignments made prior to this decision point, and the algorithm backtracks further.

### Termination:

The algorithm terminates when:
*   **Satisfiable:** All clauses are satisfied by the current assignment. The formula is satisfiable, and the assignment is a model.
*   **Unsatisfiable:** A conflict (empty clause) is derived at the top level after all branches from decision points have been explored and found to lead to contradictions. The formula is unsatisfiable.

### Significance:

The DPLL algorithm forms the basis for many modern SAT solvers. While simple in its original form, its core ideas of unit propagation and decision branching are fundamental. More advanced solvers, like those based on the [[mention:CDCL Algorithm|Conflict-Driven Clause Learning (CDCL)]] algorithm, extend DPLL with sophisticated techniques such as conflict analysis, clause learning, non-chronological backtracking, and efficient data structures to handle much larger and more complex problems.
