# LLM-wp-generation

This repository contains 11 benchmark programs; in both C syntax ('programs') and SMT-lib syntax ('programs/smt) - the program in 'programs/when-o1-preview-fails' does not contain an SMT-lib encoded equivalent.
The default programs contain 
- Non-determinism
- Arrays
- Arithmetic
- Loops
- Postconditions

The true weakest preconditions and loop invariants for these programs were derived using MaxPrANQ, these can be seen in 'maxpranq-outputs/output'.
The files leading with 'tty_' contain these results. These can be found under the last 'unsat' text occurrence. The first invariant following this 'unsat' occurrence is the weakest precondition, whilst the second pertains to the loop invariants derived.

The '/results' folder contains the LLM-generated weakest preconditions and invariants, along with comparisons of correctness to MaxPrANQ.