# CLI Architecture

This section records the architecture map for the Gemini CLI workspace and provides the place for future diagrams, design notes, and implementation references.

## Scope

The architecture workspace covers:

- Gemini CLI architecture experimentation;
- Tree-sitter-oriented evaluation prompts;
- review workflows and repository policy; and
- the MESH / IAEI / AI WELL mission.

## Current sections

- [`mesh/`](mesh/) — MESH state, connection, transition, and MESH–IAEI decision-flow notes.
- [`playground/tree-sitter/`](playground/tree-sitter/) — Tree-sitter configuration, fixtures, queries, and examples.

The surrounding repository provides `docs/`, `config/`, `scripts/`, `evals/`, `ci.mjs`, and `package.json` as supporting layers. The architecture section is intentionally modular so additional diagrams and pasted reference material can be added without reorganizing the core repository.

## Reference

This overview is based on the shared architecture reference:

[Gemini Architecture & Tree-sitter Playground](https://chatgpt.com/share/6aaa2ead-3e64-83ea-a488-3c5a475cb3c4?ogimg=plain)
