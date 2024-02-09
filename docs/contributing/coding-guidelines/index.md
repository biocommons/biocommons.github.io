# Coding Guidelines

Consistency across biocommons is a WIP


## Where we are → Where we want to be

- python repos have similar config derived from (and periodically sync'd with) biocommons.example →
  keep that
- consolidated issue and pr templates → keep that

- repos have own github actions → centralize actions in .github repo where reasonable
- ad hoc commit styles → conventional commit
- no recommendation for setup → devcontainer w/vscode setup (not required, just recommended)
- changelog with home-grown script → github release process
- black/isort/pylint → ruff



# entirely python now
# link to vscode setup



# Most important


---


## .github

- issue templates
- workflow templates
- actions

## biocommons.example


---

## Issues

- Features: Imperative, like "Enable federated network data sources"
- Bugs: Statement, like "Federated data sources crash with nematode sequences"




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





## Coding Guidelines

- example repo
- protected branches
- Atomic Commits http://en.wikipedia.org/wiki/Atomic_commit#Atomic_Commit_Convention


## Other

- We support the three most recent [Python releases](https://devguide.python.org/versions). The
  release of a new Python version immediately triggers biocommons to add support for a new version
  and drop support for the current-3 version.
