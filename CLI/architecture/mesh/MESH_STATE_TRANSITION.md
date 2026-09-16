# MESH State Transition

MESH compares the proposed exchange with the initial state. When the difference indicates a mismatch, the context is reframed and updated.

```text
INITIAL STATE
      │
      ▼
 PROPOSED EXCHANGE
      │
      ▼
   MESH CHECK
      │
      ▼
   Δ = mismatch
      │
      ▼
    REFRAME
      │
      ▼
 UPDATED CONTEXT
```

## Interpretation

- **Initial state** records the current context.
- **Proposed exchange** describes the intended change or interaction.
- **MESH check** evaluates the relationship against the current state.
- **Δ = mismatch** identifies a meaningful difference between the proposal and the intended relationship.
- **Reframe** adjusts the interpretation or proposed exchange.
- **Updated context** becomes the state for the next evaluation.
