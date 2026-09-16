# Tree-sitter Playground

This directory contains small, language-focused experiments for parsing source files and applying Tree-sitter queries. It is intentionally separate from the repository architecture documentation so examples can evolve independently.

## Layout

- `queries/` — Tree-sitter query files grouped by language.
- `fixtures/` — Small JavaScript and TypeScript files used as query input.
- `examples/` — Runnable examples and notes for exercising the queries.

## Running the examples

The examples document the intended workflow and can be connected to a local Tree-sitter CLI or Node.js Tree-sitter binding. The repository does not vendor `tree-sitter-cli-master.zip`; use a package-manager dependency or an explicitly documented external installation instead.
