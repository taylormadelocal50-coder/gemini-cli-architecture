# Branch map

Branches are organized by role, not by outcome. Each branch should make one input, one change, and one review path easy to inspect.

## Mission check

Use the **MESH IAEI AI WELL Mission** as the branch question:

> Does this branch keep the input, transformation, and output modular, inspectable, and aligned with clear principles—without treating a preferred outcome as proof?

The MESH review loop is:

```text
MATCH → EXCHANGE → STATE → HARMONY
```

A branch may document, experiment, test, or fix. Its result remains reviewable and reversible.

## Stable branches

| Branch | Role |
| --- | --- |
| `main` | Stable project baseline. |
| `architecture` | Active architecture notes, playgrounds, and mission-level organization. |

## Feature branches

| Branch | Role |
| --- | --- |
| `feat/jupyter-playground` | Jupyter environment history. |
| `feat/latin-sql-sandbox` | Latin SQL sandbox history. |
| `feat/tree-sitter-playground` | Tree-sitter playground history. |
| `feat/mesh-state-vector` | MESH state-vector history. |

Feature branches preserve the source trail; completed work is integrated through pull requests and does not need to be kept active for new changes.

## Fix branches

| Branch | Role |
| --- | --- |
| `fix/tree-sitter-sibling` | Tree-sitter previous-sibling regression and verification. |

## Naming rule

Use one of these prefixes:

- `feat/` — a bounded addition or experiment;
- `fix/` — a bounded correction or regression test;
- `docs/` — documentation-only refinement;
- `chore/` — maintenance and repository structure.

Keep names short, specific, and outcome-neutral. The branch describes what is being inspected or changed, not what the result is expected to be.
