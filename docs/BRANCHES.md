# Branch map

Branches describe a **focus**, not a promised result. Keep each input, transformation, evidence record, and output separate and inspectable.

## Mission rule

For every input/output question, refer to the **MESH IAEI AI WELL Mission**:

```text
MATCH → EXCHANGE → STATE → HARMONY
```

| Step | Check |
| --- | --- |
| **MATCH** | Is the input or question clearly scoped? |
| **EXCHANGE** | Is the transformation bounded and explicit? |
| **STATE** | Are evidence, uncertainty, and artifact state recorded? |
| **HARMONY** | Is the output modular, reviewable, reversible, and mission-aligned? |

A result is evidence for review, not proof of a preferred outcome.

## Stable branches

| Branch | Purpose |
| --- | --- |
| `main` | Stable baseline. |
| `architecture` | Current architecture and mission-level integration. |

## Focus branches

These preserve focused work and its source trail. They are reference branches unless a pull request makes them the active integration path.

| Branch | Focus |
| --- | --- |
| `feat/jupyter` | Jupyter environment. |
| `feat/sql-latin` | Latin SQL sandbox. |
| `feat/tree-sitter` | Tree-sitter playground. |
| `feat/mesh-state` | MESH state vector. |
| `fix/tree-sibling` | Tree-sitter sibling regression. |

When work resumes, branch from the current integration target rather than extending stale history by default.

## Naming grammar

```text
<prefix>/<focus>
```

Use short, noun-first, outcome-neutral names:

- `feat/` — addition or experiment;
- `fix/` — correction or regression test;
- `docs/` — documentation refinement;
- `chore/` — maintenance or structure.

Avoid dates, ticket numbers, duplicate words, and claims such as `final`, `correct`, `approved`, or `success`.

## Review contract

```text
input → bounded transformation → evidence + uncertainty → output
```

1. Start with one explicit input or question.
2. Make the smallest branch-scoped change.
3. Record output, evidence, and uncertainty separately.
4. Review through `MATCH → EXCHANGE → STATE → HARMONY`.
5. Merge only when the change is understandable and reversible.
6. Preserve incomplete or exploratory work as reference material, not as an outcome claim.
