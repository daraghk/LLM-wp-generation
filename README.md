# LLM-wp-generation

This repository contains 11 benchmark programs; in both C syntax ('programs') and smt2 syntax ('programs/smt) - the program in '/when-o1-preview-fails' does not contain an SMT encoded equivalent.
The default programs are
- Non-deterministic
- Contain loops
- Contain post-conditions

The true weakest preconditions and (loop) invariants for these programs were derived using MaxPrANQ, and can be seen in 'maxpranq-outputs/output'.
The files leading with 'tty_' contain these results. These can be found under the last 'unsat' text occurrence. The first invariant following this 'unsat' occurrence is the weakest precondition, whilst the second pertains to the loop invariants derived.