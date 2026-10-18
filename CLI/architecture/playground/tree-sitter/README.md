# Tree-sitter Playground

A small, architecture-oriented parsing playground for the Gemini CLI repository. It separates source fixtures, Tree-sitter queries, and experiment notes so parser behavior can be inspected without mixing generated output into the project root.

## Structure

- `tree-sitter.yml` — the playground contract: languages, grammar names, fixtures, queries, and checks.
- `queries/` — language-specific Tree-sitter query files.
- `fixtures/` — minimal JavaScript and TypeScript inputs.
- `examples/` — command notes and experiments.
- `regressions/` — pinned upstream parser regressions with focused tests, fixes, and reproducible verification scripts.

The YAML file describes inputs and checks; it does not download grammars or vendor the Tree-sitter CLI. Keep generated parser output under `.generated/` and out of Git.
