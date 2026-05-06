# darten

`darten` is a focused Dart codebase around model offline note edits, vector clocks, and deterministic conflict resolution. It is meant to be easy to inspect, run, and extend without a hosted service.

## Darten Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the offline sync idea grounded in files that can be checked locally.

## Reason For The Project

The repository exists to keep a technical idea small enough to reason about. The implementation avoids external dependencies where possible, then uses fixtures to make changes easy to review.

## Data Notes

`examples/extended_cases.csv` adds six named cases. I kept the names plain so failures are easy to read in a terminal: baseline, pressure, surge, degraded, recovery, and boundary.

## How It Is Put Together

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps input state, policy checks, and fixture data in one explicit decision path. The threshold is 176, with risk penalty 6, latency penalty 4, and weight bonus 3. The Dart project uses a small library and assertion script, avoiding package dependencies for verification.

## Capabilities

- Models input state with deterministic scoring and explicit review decisions.
- Uses fixture data to keep policy checks changes visible in code review.
- Includes extended examples for fixture data, including `surge` and `degraded`.
- Documents local reports tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Where Things Live

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Possible Extensions

- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Add one more offline sync fixture that focuses on a malformed or borderline input.

## Tradeoffs

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Getting It Running

The only required setup is the local Dart toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.
