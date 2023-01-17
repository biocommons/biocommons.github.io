# Coding Guidelines

For the collective good of the organization, projects must adopt and adapt to the technical
standards and coding guidelines created by the Architectural Team, or present a rationale for doing
otherwise.  In general, biocommons projects should operate consistently and coherently; divergence
of behavior, especially needless divergence, is detrimental to the overall goes.

- code maintainers 
- main, dev, feature branches, nn-
- use and keep up-to-date with template

- 1-3 project leads are code owners. They are expected to meet and discuss as needed.
- Code owners may commit directly. Everyone else needs to submit a PR from a fork.
- All branches and PRs should be tied to a github issue for that repo with standard naming conventions.
- PRs should include docs and tests (but up to the code owners).

- All Python packages must use the same structure (pyproject.toml, __version__ from git, etc).

- most development should be the result of an issue

## Issues

## PRs


## Versioning

All biocommons tools use Semantic Versioning.  Package versions are derived from git tags in order
to ensure that released software always corresponds to a git tag.

## Branching and Merging Model

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

![alt blah](./images/branching-model.png)


## Coding Guidelines

example repo

Code in biocommons org

License = Apache
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
