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

## Project map

The shared architecture reference describes this repository as a focused workspace for Gemini CLI experimentation, Tree-sitter-oriented evaluation prompts, review workflows, repository policy, and the MESH / IAEI / AI WELL mission. It identifies the current contents as architecture notes, policies, prompt templates, review scripts, and evaluation fixtures, while leaving room for a future source tree.

The expected getting-started path is:

1. Read `GEMINI.md` for shared project instructions.
2. Review `docs/ROADMAP.md` for project direction.
3. Use the playbooks in `docs/` for creating, running, fixing, and promoting work.
4. Run `npm run` to inspect available commands.

Asynchronous pull-request review helpers live under `scripts/` and use temporary state under `.gemini/tmp/`. Contribution and security guidance is provided by `docs/CONTRIBUTING.md` and `docs/SECURITY.md`.

## Reference

This overview is based on the shared architecture reference:

[Gemini Architecture & Tree-sitter Playground](https://chatgpt.com/share/6aaa2ead-3e64-83ea-a488-3c5a475cb3c4?ogimg=plain)
