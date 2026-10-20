# Branch map

Branches are organized by role, not by outcome. Each branch should make one input, one transformation, and one review path easy to inspect.

## Mission check

Use the **MESH IAEI AI WELL Mission** whenever deciding how an input and output work together:

> Does this branch keep the input, transformation, evidence, and output modular and inspectable without treating a preferred outcome as proof?

Apply the MESH review loop:

```text
MATCH → EXCHANGE → STATE → HARMONY
```

| Step | Question |
| --- | --- |
| **MATCH** | What input, source, or question belongs here? |
| **EXCHANGE** | What bounded change happens to that input? |
| **STATE** | What evidence, uncertainty, and artifact state are recorded? |
| **HARMONY** | Is the output modular, reviewable, reversible, and consistent with the mission? |

The output is an inspected result, not a guaranteed result. Keep evidence separate from interpretation, and keep a failed or incomplete result useful for the next review.

## Branch roles

### Stable

| Branch | Use it for |
| --- | --- |
| `main` | Stable project baseline. |
| `architecture` | Current architecture, playground, and mission-level integration. |

### Reference

These branches preserve focused work and its source trail. They are not automatically the current integration target.

| Branch | Focus |
| --- | --- |
| `feat/jupyter` | Jupyter environment. |
| `feat/sql-latin` | Latin SQL sandbox. |
| `feat/tree-sitter` | Tree-sitter playground. |
| `feat/mesh-state` | MESH state vector. |
| `fix/tree-sibling` | Tree-sitter previous-sibling regression. |

When a reference branch is needed again, start a fresh branch from the current integration target rather than extending stale history by default.

## Naming grammar

Use a short, noun-first, outcome-neutral name:

```text
<prefix>/<focus>
```

Allowed prefixes:

- `feat/` — bounded addition or experiment;
- `fix/` — bounded correction or regression test;
- `docs/` — documentation-only refinement;
- `chore/` — maintenance or repository structure.

Examples: `feat/sql-latin`, `feat/tree-sitter`, and `fix/tree-sibling`.

Name what is being inspected or changed, not what the result is expected to be. Avoid dates, ticket numbers, duplicate words, and outcome claims such as `final`, `correct`, `approved`, or `success`.

## Input/output contract

A branch is ready for review only when its input and output can be named separately:

```text
input → bounded transformation → evidence + uncertainty → output
```

The branch name identifies the focus. The commit and review record identify the transformation. Tests, notes, and artifacts identify the evidence. The output remains subject to MESH review; no branch name or expected result overrides that review.

## Review path

1. Start with one explicit input or question.
2. Make the smallest branch-scoped transformation.
3. Record the output with evidence and uncertainty.
4. Review it through `MATCH → EXCHANGE → STATE → HARMONY`.
5. Merge only when the change is understandable and reversible.
6. If it is incomplete or exploratory, preserve it as reference material rather than presenting it as an outcome.
