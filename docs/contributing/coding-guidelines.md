# Coding Guidelines

Consistency across biocommons

link to vscode setup


## .github

- issue templates
- workflow templates
- actions

## biocommons.example


## Most Important

### Process

- Work in your own forks.
- Create issues for proposed changes.  Discuss major changes there before submitting a PR.
- Name branches as 123-my-issue-title (use "Create a branch" on issue page)
- Strive for consistency within and across projects unless you have a very good reason to do
  otherwise.
- Limit work just to the topic of a branch, and nothing more.
- NEVER reformat code while working on a feature.
- Use the biocommons package template for new code.  Existing repos are periodically synchronized
  with that repo.
- Don't x.y.z pin dependencies. In Python, use `~=x.y`
- Strive for DRYness (Don't Repeat Yourself)
- Test your code before committing. ⇒ precommit hooks
- Makefiles are the entry point for all automation, and used in workflows/actions. Why? Guarantee
  same behavior local and remote (actions)

### Style 

- 100 column width
- docstring style
- use double quotes. (Why? Easier to embed single quotes if needed.)
- _logger at top of module. Use it.
- YAML confing, not TOML or JSON

### Casing

- executables are kebab-case
- command line arguments are kebab-case
- symbols are snake_case
- class names are PascalCase with capitalized abbeviations like PascalCaseRN
- camelCase is not used, even for json. (Why? Because json is typically just one
  embodiment of the data and it needs to work elsewhere)

### Preferred pacakges

- argparse (not click)
- coloredlogs (not logging)
- PyYAML
- requests
- smart-open

## Code formatting

- black
- isort
- pylint


## Coding

- All source code is licensed under the Apache License, 2.1.

- Packages should use the [biocommons.example
  repo](https://github.com/biocommons/biocommons.example) to get started, for consistency.  Updates
  to the example will occasionally be merged into the repos.

- 1-3 project leads are code owners. They are expected to meet and discuss as needed.
- Code owners may commit directly. Everyone else needs to submit a PR from a fork.
- All branches and PRs should be tied to a github issue for that repo with standard naming conventions.
- PRs should include docs and tests (but up to the code owners).

- All Python packages must use the same structure (pyproject.toml, `__version__` from git, etc).
  We'll sync with biocommons.example periodically to ensure consistency.

- most development should be the result of an issue

- Don't catch exceptions unless you expect to respond meaningfully. 

- Configuration: config env vars should be high in the stack, adjacent to other configuration, and
  passed down.  Env vars should typically not change behavior deep in a call stack. In no
  circumstance should an env var override an explicit setting higher in the stack. Debugging,
  logging, and other observability tooling are exceptions to this rule.


## Commits

Use Conventional Commits

## Issues

- Features: Imperative, like "Enable federated network data sources"
- Bugs: Statement, like "Federated data sources crash with nematode sequences"


## PRs and review

- discrete changes; bundled changes that can be logically separated should be
- Squash & Merge: Recommended/preferred, but not required for PR submission or for merge
- PRs generally require one approval.  Ideally, approval should be sought from a second institution
  as well. Exception: Administrative changes may be committed directly by the executive director
  as we transition to community management.

## Release process

### Current

### New process



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


## Coding Guidelines

- example repo
- protected branches
- Atomic Commits http://en.wikipedia.org/wiki/Atomic_commit#Atomic_Commit_Convention


## Other

- We support the three most recent [Python releases](https://devguide.python.org/versions). The
  release of a new Python version immediately triggers biocommons to add support for a new version
  and drop support for the current-3 version.
