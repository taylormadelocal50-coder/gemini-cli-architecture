# MESH–IAEI Decision Flow

> **Status: exploratory draft.** The ATLED expansion, energy/altruism measures, and motive inference described below are hypotheses for further design, not settled implementation requirements.

The proposed flow begins with an instigating entity, runs a dry-run assessment through MESH and IAEI, records the interaction over time, and passes the resulting change signal to a decision engine.

```text
                 INSTIGATING ENTITY
              individual / corporation
                         │
                         ▼
                 ┌──────────────┐
                 │     MESH     │
                 │              │
                 │ MATCH        │
                 │ EXCHANGE     │
                 │ STATE        │
                 │ HARMONY      │
                 └──────┬───────┘
                        │
                   DRY RUN
                        │
                        ▼
                 ┌──────────────┐
                 │     IAEI     │
                 │              │
                 │ evaluate     │
                 │ evidence     │
                 │ uncertainty  │
                 └──────┬───────┘
                        │
                        ▼
              ┌──────────────────┐
              │ TEMPORAL RECORD  │
              │                  │
              │ t₀ → t₁ → t₂...  │
              └────────┬─────────┘
                       │
                       ▼
                    Δ + ATLED
                       │
                       ▼
             ┌──────────────────┐
             │ DECISION ENGINE  │
             └──────────────────┘
```

## Defined stages

### Instigating entity

The source of the proposed interaction. It may be an individual, organization, corporation, service, or other system. Identity and authorization establish who is making the proposal; they do not by themselves establish that the proposal is coherent, safe, or beneficial.

### MESH dry run

The MESH dry run evaluates the proposed relationship before commitment:

```text
MESH = (MATCH → EXCHANGE → STATE → HARMONY)
```

It asks what is being connected, what changes through the connection, whether the relationship remains intended, and whether the interaction is harmonious enough to accept, alter, or isolate.

### IAEI evaluation

IAEI is represented here as an evidence and uncertainty review after the MESH dry run. Its exact expansion and scoring method remain to be defined. At minimum, the evaluation should distinguish:

- observed evidence from inferred claims;
- confidence from uncertainty;
- reversible from irreversible effects; and
- stated intent from behaviorally supported intent.

### Temporal record

The system records relevant state transitions rather than treating the interaction as a single timeless event:

```text
t₀ → t₁ → t₂ → ...
```

Each transition should preserve provenance, the inputs considered, the decision context, and the resulting change.

## ATLED: working concept

`ATLED` is the composite signal defined by the following five dimensions:

- **A — Altruism:** observable benefit to other affected entities, not an assumed inner virtue;
- **T — Time:** the relevant sequence, duration, and temporal window for the interaction;
- **L — Longevity:** how long effects persist, scaled against time invested or exposure;
- **E — Energy:** resources consumed, produced, transferred, or depleted, including system coherence;
- **D — Decision:** the resulting choice, commitment, reframe, alteration, isolation, or request for more evidence.

This is not yet a validated formula. A later design should define units, normalization, weighting, and whether the dimensions may be compared at all.

The existing impact-density concept may provide one candidate submetric:

```text
Impact Density = persistent_effect / time_invested
```

## Decision-engine question

A central research question is whether a dry run through MESH and IAEI can help an AI system distinguish motives or relational tendencies of an individual, entity, or corporation.

The safe architectural answer is limited: the system may estimate **behavioral signals and stated-purpose consistency**, but it should not claim certainty about private motives or a person's inherent character. The decision engine should therefore output:

1. an evidence-linked assessment;
2. an uncertainty range or confidence level;
3. detected semantic drift or contradiction;
4. expected reversibility and persistence; and
5. a proposed action such as commit, reframe, alter, isolate, or request more evidence.

Any altruism or motive-related score should remain explainable, contestable, and grounded in observed behavior. It should not be used as an unreviewable proxy for protected traits, moral worth, or access entitlement.

## Open design questions

1. What does IAEI stand for operationally, and what evidence model does it require?
2. Is ATLED a vector, a tuple of independent measures, or a derived score?
3. How should energy and harmony be measured across heterogeneous systems?
4. How should altruism be distinguished from reciprocity, reputation-seeking, or externality shifting?
5. Which effects are reversible, and what temporal horizon defines longevity?
6. What minimum evidence is required before the decision engine can commit rather than reframe or isolate?
