# darten

`darten` explores offline sync with a small Dart codebase and local fixtures. The technical goal is to model offline note edits, vector clocks, and deterministic conflict resolution.

## Purpose

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Darten Review Notes

Start with `decision risk` and `state drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for input pressure and state drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/darten-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `decision risk` and `state drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The added Dart path is deliberately direct, with fixtures doing most of the explaining.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 211, which lands in `ship`. The most cautious case is `stress` at 113, which lands in `watch`.

## Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
