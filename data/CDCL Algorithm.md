---
title: CDCL Algorithm
type: algorithm
---

The CDCL algorithm is a [[is-a:satisfiability solver]] for [[uses:propositional formula|propositional formulae]].
It is an improvement on the [[part:DPLL Algorithm|DPLL algorithm]] that enables more efficient traversal of the search space via learning clauses. This improvement enables CDCL to be the basis of most modern high-performance SAT solvers.

### How it Works

**Input**
 - A [[uses:Propositional Formula]] in [[uses:Conjunctive Normal Form (CNF)|Conjunctive Normal Form]]

**Output**
 - A [[uses:Satisfying Assignment]] or an indication of unsatisfiability.

**Process**
CDCL refines DPLL by incorporating several key techniques:

1.  **Decision Making (Branching):**
    *   Similar to DPLL, if no direct implications (like unit propagation) can be made, the algorithm chooses an unassigned variable (the *decision variable*) and assigns it a truth value (e.g., `True`). This is a *decision level*.
    *   Sophisticated heuristics (e.g., VSIDS - Variable State Independent Decaying Sum) are used to select decision variables that are likely to lead to conflicts or solutions quickly.

2.  **Boolean Constraint Propagation (BCP) (Unit Propagation):**
    *   After a decision (or learning a new clause), BCP is performed. This is identical to unit propagation in DPLL: if a clause becomes a unit clause (all literals but one are false under the current [[uses:Assignment|assignment]]), the remaining literal must be assigned a value to make the clause true.
    *   This process is repeated iteratively until no more unit clauses are found or a conflict is detected.
    *   Efficient data structures (e.g., two-watched literals) are crucial for fast BCP.

3.  **Conflict Analysis and Clause Learning:**
    *   If BCP leads to a *conflict* (i.e., a clause becomes false under the current [[uses:Assignment|assignment]], e.g., `(A ∨ B)` where `A` is `False` and `B` is `False`), the algorithm does not simply backtrack to the most recent decision.
    *   Instead, it analyzes the *implication graph* that led to the conflict to identify the assignments responsible.
    *   From this analysis, a new clause, called a *learned clause* (or *conflict clause*), is generated. This clause is redundant (implied by the original formula) but prunes the search space by preventing the same conflicting assignment combination from being explored again.
    *   The learned clause is typically an *asserting clause*: at some backtrack level, it will become a unit clause, forcing a variable assignment.

4.  **Non-Chronological Backtracking (Backjumping):**
    *   When a conflict occurs and a conflict clause is learned, the algorithm backtracks.
    *   Instead of backtracking to the immediately preceding decision level (chronological backtracking), CDCL backtracks to the most recent decision level that is actually involved in the conflict, as determined by the conflict analysis. This level is often much earlier in the decision stack, allowing the solver to jump over irrelevant parts of the search space.
    *   The learned clause is designed to become unit at the backtrack level, guiding the search.

5.  **Restarts:**
    *   Periodically, the solver may discard the current partial [[uses:Assignment|assignment]] and restart the search from the beginning, while keeping the learned clauses.
    *   Restarts help to escape "stuck" regions of the search space and can improve overall performance, often guided by restart policies (e.g., Luby sequence).

6.  **Literal Phase Heuristics:**
    *   When making a decision, heuristics can also decide which phase (True or False) to assign to the variable first. Some solvers remember the last satisfying phase (phase saving).

The algorithm terminates when one of the following conditions is met:
*   **Satisfiable:** If the decision process leads to an [[uses:Assignment|assignment]] where all original clauses are satisfied, the formula is satisfiable.
*   **Unsatisfiable:** If conflict analysis at decision level 0 (no decisions made, only propagations from original unit clauses or learned clauses) derives an empty clause (a conflict), the formula is unsatisfiable.

### Relevance

CDCL algorithms are significantly more powerful than basic DPLL, especially on large, structured industrial instances. The combination of clause learning, non-chronological backtracking, and efficient BCP allows them to navigate vast search spaces effectively. They are the core engine in many [[mention:SMT Solver|SMT solvers]] and have applications in AI, formal verification, and other areas.