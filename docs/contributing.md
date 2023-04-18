# Contributing

Thank you for your interest in contributing to the biocommons! We welcome your participation!

biocommons projects use shared technical standards and coding guidelines in order to operate
consistently and coherently, and to facilitate contributors moving between projects.

## Getting Started

New to Biocommons and looking for ways to contribute? The best way to get started is to sign
up on the [Biocommons Slack](community#slack) and introduce yourself! You may also consider
joining one or more [Biocommons discussion lists](community#discussion-lists).

If you have a specific feature in mind for a Biocommons product, create an issue following our
[community guidelines](#issues) to get in touch with a project team.

## Preferred Tools

- Meetings: Google Calendar and Google Meet, with an agenda attached to the meeting
- Google Groups for mailing lists
- Source code and planning: GitHub, with GitHub issues and projects
- Documentation: markdown, with diagrams in mermaid and diagrams.net (aka drawio), in code repo.
- Development: VS Code, with recommended setup for embedded mermaid and drawings.net support

## Ways to Contribute

- Write code
- Triage and respond to issues
- Clarify features to be developed
- Update documentation
- Help to update and release seqrepo and uta


## Repos

- All packages use the Apache License, 2.1.

- Most packages use the [biocommons.example
  repo](https://github.com/biocommons/biocommons.example) to get started, for consistency.  Updates
  to the example will occasionally be merged into the repos

- code maintainers
- main, dev, feature branches, nn-
- use and keep up-to-date with template

- 1-3 project leads are code owners. They are expected to meet and discuss as needed.
- Code owners may commit directly. Everyone else needs to submit a PR from a fork.
- All branches and PRs should be tied to a github issue for that repo with standard naming conventions.
- PRs should include docs and tests (but up to the code owners).

- All Python packages must use the same structure (pyproject.toml, `__version__` from git, etc).

- most development should be the result of an issue


## Issues

## PRs

## Code formatting

## Versioning

All biocommons tools use [Semantic Versioning](https://semver.org/).  Package versions are derived from
git tags in order to ensure that released software always corresponds to a git tag.

## Branching and Merging Model

![Branching Strategy](/images/branching-strategy.drawio.svg){.right}

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
