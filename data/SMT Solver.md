---
title: SMT Solver
type: category 
---

An **SMT solver** is an implementation of algorithms that can solve [[uses: first order logic]] [[uses:Logical Formula|formula]], usually conjoined with some extra theory $T$.

SMT solvers work by combining the techniques of [[mention:satisfiability solver|SAT solvers]] (like [[mention:CDCL Algorithm|CDCL]]) with theory-specific solvers. The core SAT solver handles the boolean structure of the formula, while theory solvers handle the constraints imposed by the theory $T$.

The process generally involves:

1. **Boolean Abstraction:** The input formula is abstracted into a propositional formula by replacing theory atoms (theory-specific formulas that resolve to a boolean e.g., $x + y > z$) with new propositional variables.

2. **SAT Solving:** A SAT solver is used to find a satisfying assignment for the boolean abstraction, if any exists.

3. **Theory Check:** The assignment from the SAT solver is given to the theory solver, which checks whether the assignment is consistent with the theory. For example, 

4. **Conflict Resolution:** If the theory solver finds a conflict (i.e., the set of theory atoms is inconsistent), it generates a "theory lemma" (a constraint implied by the theory) that explains the conflict. This lemma is added to the boolean abstraction as a clause, and the process repeats from step 2.

5. **Satisfiable/Unsatisfiable:** If the SAT solver finds an assignment that is consistent with the theory, the original formula is satisfiable. If the SAT solver exhausts all possibilities (including those refined by theory lemmas) without finding a consistent assignment, the original formula is unsatisfiable.
