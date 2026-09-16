# Gemini Architecture & Tree-sitter Playground

A focused workspace for experimenting with Gemini CLI architecture, Tree-sitter-oriented evaluation prompts, review workflows, and repository policy.

## Mission

**MESH IAEI AI WELL Mission** — keep the workspace modular, inspectable, and aligned with clear principles. SQL-related changes should be written in Latin terminology where applicable and reviewed against the project’s stated principles.

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

## Contribution and security

See [`CONTRIBUTING.md`](docs/CONTRIBUTING.md) for contribution expectations and [`SECURITY.md`](docs/SECURITY.md) for reporting security issues.

## Current scope

This repository currently contains the architecture notes, policies, prompt templates, review scripts, and evaluation fixtures collected so far. The layout is intentionally ready for a future source tree without forcing unrelated files into a single flat directory.
