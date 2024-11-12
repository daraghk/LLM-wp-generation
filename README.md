# LLM-wp-generation

This repository contains 10 benchmark programs; in both C syntax ('programs') and smt2 syntax ('programs/smt).
The default programs are
- Non-deterministic
- Contain loops
- Contain post-conditions

The true weakest preconditions and (loop) invariants for these programs were derived using MaxPrANQ, and can be seen in 'maxpranq-outputs/output'.
The files leading with 'tty_' contain these results. These can be found under the last 'unsat' text occurrence. The first invariant following this 'unsat' occurrence is the weakest precondition, whilst the second pertains to the loop invariants derived.

The 'results' folder contains the evaluations of using ChatGPT to derive the weakest preconditions (and invariants) for these programs. 