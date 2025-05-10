---
title: DPLL Algorithm
type: algorithm
---

The **DPLL algorithm** is an algorithm for [[uses:propositional formula|propositional]] [[is-a:satisfiability solver|satisfiability solving]]. It is a backtracking-based search algorithm designed to determine the satisfiability of a [[uses:propositional formula]] in [[uses:Conjunctive Normal Form (CNF)|conjunctive normal form (CNF)]].

### How it Works

The algorithm systematically explores the space of all possible combinations of truth [[uses:Assignment|assignments]] for each of the variables in the formula. It operates through a recursive/iterative process described as follows:

**Input**
 - A [[uses:Propositional Formula]] in [[uses:Conjunctive Normal Form (CNF)|Conjunctive Normal Form]]

**Output**
 - A [[uses:Satisfying Assignment]] or an indication of unsatisfiability.

**Process**
 - Initialize an empty list of assignments.
   - *Assignments are distinguished as either decision or propagation assignments*
 - Represent the CNF formula as a set of clauses. Clauses are sets of literals.
   - Literals are variables like $A$ or their negations like $\neg A$.
   - Clauses represent disjunctions (ORs): e.g., $A \lor \neg B \lor C \equiv \{A, \neg B, C\}$.
   - The formula is a conjunction (AND) of these clauses: e.g., $(A \lor \neg B) \land (C \lor B) \equiv \{\{A, \neg B\}, \{C, B\}\}$.
   - *The formula data structure must support efficient modifications and allow changes to be rolled back, i.e. by cloning for recursive calls or by maintaining a change log.*

   - **Simplify & Check UNSAT**
     - Removes atoms that are assigned to true, if an atom is the only one left in a clause when set to true it removes the clause as well.
     - Removes atoms in clauses that are assigned to false. Rollback to last decision clause and assign it the other way. **If no decisions left to reverse, return UNSAT**
     - **If all clauses have been removed, return SAT with current assignment.**
 - Repeatedly do one of the following, whichever one can be done first:
   - **Unassigned Atom Elimination**: If there is a clause with only one atom that is not already assigned in the [[uses:assignment]]:
     - *Add to assignment list whatever is needed to make that atom true (and thus the resulting clause true). Simplify & Check UNSAT*
   - **Non-Conflicting Atom Elimination**: If a variable only appears in the form $P$ or only appears as $\neg P$,:
     - *Assign the variable to true if the variable appears as $P$ everywhere, false otherwise. Simplify and Check UNSAT*
   - **Branch**:
     - *Add an decision assignment to the assignment list. Simplify and Check UNSAT*

### Relevance

DPLL has been surpassed by CDCL at this point, but it is a good basis for learning about SAT solving algorithms and CDCL builds off of DPLL to some degree, so its a good toy model.