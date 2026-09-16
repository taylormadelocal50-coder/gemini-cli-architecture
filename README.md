# Gemini Architecture & Tree-sitter Playground

A focused workspace for experimenting with Gemini CLI architecture, Tree-sitter-oriented evaluation prompts, review workflows, and repository policy.

## Mission

**MESH IAEI AI WELL Mission** — keep the workspace modular, inspectable, and aligned with clear principles. SQL-related changes should be written in Latin terminology where applicable and reviewed against the project’s stated principles.

## MESH model

```text
MESH = (MATCH → EXCHANGE → STATE → HARMONY)
```

MESH changes the boundary question from identity alone to intent and structural consistency. Traditional gates verify signatures and tokens; MESH evaluates semantic drift, including cases where an authenticated payload carries an invalid or dangerous premise.

```text
IDENTITY
   ↓
AUTHORIZATION
   ↓
       MESH
       ↓
  MATCH
       ↓
  EXCHANGE
       ↓
    STATE
       ↓
   HARMONY
       ↓
 COMMIT / REFRAME
```

**Reframing as a safety valve:** rather than forcing a hard exception or blind drop, `REFRAME` gives systems an opportunity to renegotiate an interface when context shifts.

**Self-pruning overhead:** MESH stays lightweight by checking only the core relational loop—`MATCH → EXCHANGE → STATE → HARMONY`—instead of accumulating static policy rules.

## Repository map

| Directory | Purpose |
| --- | --- |
| [`docs/`](docs/) | Project guidance, contribution notes, security guidance, roadmap, and operating playbooks |
| [`config/`](config/) | Agent policies, prompt definitions, and workflow configuration |
| [`scripts/`](scripts/) | Local review and CI-support utilities |
| [`evals/`](evals/) | Evaluation fixtures and reference test material |
| [`ci.mjs`](ci.mjs) | CI monitoring utility kept at the root for direct invocation |
| [`package.json`](package.json) | Node.js package metadata and project commands |

## Getting started

1. Read [`GEMINI.md`](GEMINI.md) for workspace-specific guidance.
2. Review [`ROADMAP.md`](docs/ROADMAP.md) to understand intended direction.
3. Use the playbooks in [`docs/`](docs/) for creating, running, fixing, and promoting work.
4. Run `npm run` to inspect the available project commands.

## Review utilities

The asynchronous pull-request review helpers live in [`scripts/`](scripts/). They write temporary review state under `.gemini/tmp/`, which is intentionally ignored by Git. Run them from the repository root so Git and package commands resolve consistently.

## Running the Tree-sitter playground

Install the Tree-sitter CLI using your package manager, then run it from the repository root. The playground configuration and query fixtures live under [`CLI/architecture/playground/tree-sitter/`](CLI/architecture/playground/tree-sitter/).

```bash
npm install --save-dev tree-sitter-cli
cd CLI/architecture/playground/tree-sitter
npx tree-sitter parse fixtures/javascript/basic.js
npx tree-sitter query queries/javascript/functions.scm fixtures/javascript/basic.js
```

Use the TypeScript fixture and query in the same way when the TypeScript grammar is available. The `tree-sitter.yml` file records the intended grammar, fixture, query, and check pairings. Generated output should remain under `.generated/` and is ignored by Git.

## Contribution and security

See [`CONTRIBUTING.md`](docs/CONTRIBUTING.md) for contribution expectations and [`SECURITY.md`](docs/SECURITY.md) for reporting security issues.

## Current scope

This repository currently contains the architecture notes, policies, prompt templates, review scripts, and evaluation fixtures collected so far. The layout is intentionally ready for a future source tree without forcing unrelated files into a single flat directory.
