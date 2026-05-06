# Review Journal

The review surface for `darten` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its offline sync focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input pressure`, score 164, lane `ship`
- `stress`: `state drift`, score 113, lane `watch`
- `edge`: `review cost`, score 168, lane `ship`
- `recovery`: `decision risk`, score 211, lane `ship`
- `stale`: `input pressure`, score 176, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
