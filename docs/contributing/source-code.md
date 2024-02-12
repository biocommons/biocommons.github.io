# Source Code Management

## Issues

- Features: Imperative, like "Enable federated network data sources"
- Bugs: Statement, like "Federated data sources crash with nematode sequences"


## Permissions

- All repos have branch protections on the main branch.
- All repos are managed by a single
  [`@biocommons/maintainers`](https://github.com/orgs/biocommons/teams/maintainers) team.

## Coding and committing

- Create an issue for proposed changes.  Discuss major changes before submitting a PR.
- Work in your own forks.
- Name branches as 123-my-issue-title (use "Create a branch" on issue page)
- Limit work just to the topic of a branch, and nothing more.
- NEVER reformat code while working on a feature.
- Test your code before committing. Code that is not passing tests is unlikely to be reviewed.
- NEW: Use Conventional Commits


## PRs and review

- discrete changes; bundled changes that can be logically separated should be
- Squash & Merge: Recommended/preferred, but not required for PR submission or for merge
- PRs generally require one approval.  Ideally, approval should be sought from a second institution
  as well. Exception: Administrative changes may be committed directly by the executive director
  as we transition to community management.

## CI/CD

- github actions → biocommons pypi

- actions should use makefile targets to promote consistency


## Versioning

All biocommons tools use [Semantic Versioning](https://semver.org/).  Package versions are derived from
git tags in order to ensure that released software always corresponds to a git tag.  There is no "v"
in the version tag.

## Branching and Merging Model

Goals:

- enable (not require) multiple major or multiple minor development and release branches. (hgvs has
  used this historically) 
- as simple as possible
- works with conventional commits


![Branching Strategy](branching-strategy.drawio.svg){.right}

- main is the release branch.
- release-specific branches, branched off of main and named as x.y, support concurrent
  patch release off the x.y 
- dev is the development branch for integration testing.
- feature development occurs in feature branches, branched off of dev and named for the
  corresponding issue (e.g., 42-bang-the-rocks-together).
- bug fixes occur in branches off of the affected release. As necessary, those fixes should be then
  merged back to main.

If a project needs a new development branch for a major release, the Architectural Team will address
the issue.

### Merging

- Tests must pass in order to be merged. Branches that are failing tests will not be merged.
- Merging to main and dev is restricted to code owners.


## Release process

### Current

### New process
