# Coding Guidelines

Consistency across biocommons



## .github

- issue templates
- workflow templates
- actions

## biocommons.example


## Most Important

- Work in your own forks.

- Create issues for proposed changes.  Discuss major changes there before submitting a PR.

- Name branches as 123-my-issue-title (use "Create a branch" on issue page)

- Strive for consistency within and across projects unless you have a very good reason to do
  otherwise.

- Limit work just to the topic of a branch, and nothing more.

- NEVER reformat code in a branch.

- Use the biocommons package template for new code.  Existing repos are periodically synchronized
  with that repo.

- Don't x.y.z pin dependencies. In Python, use `~=x.y`

- Strive for DRYness (Don't Repeat Yourself)

- Test your code before committing. ⇒ precommit hooks

- Makefiles are the entry point for all automation, and used in workflows/actions. Why? Guarantee
  same behavior local and remote (actions)


## Code formatting

- black
- isort
- pylint



## Coding

- All source code is licensed under the Apache License, 2.1.

- Packages should use the [biocommons.example
  repo](https://github.com/biocommons/biocommons.example) to get started, for consistency.  Updates
  to the example will occasionally be merged into the repos.

- branching main, dev, feature branches, nn-

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

## PRs and review

- discrete changes; bundled changes that can be logically separated should be
- Squash & Merge: Recommended/preferred, but not required for PR or for merge


## Release process

### Current

### New process



## CI/CD

github actions → biocommons pypi



## Versioning

All biocommons tools use [Semantic Versioning](https://semver.org/).  Package versions are derived from
git tags in order to ensure that released software always corresponds to a git tag.

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

example repo

Code in biocommons org


Example repo
Consistent setup from template

versioning

- semver
- no v
- directly from tag when possible
- branching model
- multiple version branches
- dev in forks
- protected branches
- https://gist.github.com/chalasr/fd195d83a0a01e4291a8
- Atomic Commits http://en.wikipedia.org/wiki/Atomic_commit#Atomic_Commit_Convention

Pull requests

- squash if you want before the PR
- branch names 6-go-bonkers
- Merge commit message used as default for changelog

Review criteria

Tagging, releasing, changelogs


## Other

- We support the three most recent [Python releases](https://devguide.python.org/versions). The
  release of a new Python version immediately triggers biocommons to add support for a new version
  and drop support for the current-3 version.
