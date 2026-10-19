# Branch map

Branches are organized by role, not by outcome. Each branch should make one input, one transformation, and one review path easy to inspect.

## Mission check

Use the **MESH IAEI AI WELL Mission** whenever deciding how an input and output should work together:

> Does the branch keep the input, transformation, and output modular, inspectable, and aligned with clear principles—without treating a preferred outcome as proof?

Apply the MESH review loop:

```text
MATCH → EXCHANGE → STATE → HARMONY
```

In branch terms:

| MESH step | Branch question |
| --- | --- |
| **MATCH** | What input, source, or question belongs here? |
| **EXCHANGE** | What bounded change happens to that input? |
| **STATE** | What evidence, uncertainty, and artifact state should be recorded? |
| **HARMONY** | Is the output still modular, reviewable, reversible, and consistent with the mission? |

The output is an inspected result, not a guaranteed result. Keep evidence separate from interpretation and keep a failed or incomplete result useful for the next review.

## Stable branches

| Branch | Role |
| --- | --- |
| `main` | Stable project baseline. |
| `architecture` | Architecture notes, playgrounds, and mission-level organization. |

## Feature branches

| Branch | Role |
| --- | --- |
| `feat/jupyter` | Jupyter environment work. |
| `feat/sql-latin` | Latin SQL sandbox work. |
| `feat/tree-sitter` | Tree-sitter playground work. |
| `feat/mesh-state` | MESH state-vector work. |

## Fix branches

| Branch | Role |
| --- | --- |
| `fix/tree-sibling` | Tree-sitter previous-sibling regression and verification. |

## Naming rule

Use one of these prefixes:

- `feat/` — a bounded addition or experiment;
- `fix/` — a bounded correction or regression test;
- `docs/` — a documentation-only refinement;
- `chore/` — maintenance and repository structure.

Keep names short, noun-first, and outcome-neutral. Prefer a two-part name such as `feat/sql-latin` or `fix/tree-sibling`. Name what is being inspected or changed, not what the result is expected to be.

## Review path

1. Start from a single, explicit input or question.
2. Make the smallest branch-scoped transformation.
3. Record the output together with evidence and uncertainty.
4. Review the result through `MATCH → EXCHANGE → STATE → HARMONY`.
5. Merge only when the change is understandable and reversible; otherwise preserve it as a documented experiment or fix branch.
