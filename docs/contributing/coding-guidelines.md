# Coding Guidelines

biocommons projects use shared technical and coding conventions in order to operate
consistently and coherently, and to facilitate contributors moving between projects.

## General Guidelines

- **Create issues for proposed changes.**  Most development should be the result of a bug or feature
  issue.  Discuss major changes there.  This will help coordinate work that might duplicate or
  conflict with others.

- **New developers work in forks.** New contributors should work in their own forks. Frequent
  contributors may ask for write permissions on relevant repos to increase community awareness of
  their work.

- **Submit changes as a pull request.** Code owners may commit directly with discretion, but
  this should be rare.  Follow [GitHub
  Guidance](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue)
  to title PRs like "Fixes \#123: File not found when..." or "Closes \#456:
  Implement sequence caching".

- **Link branches to issues and follow the branch naming convention.**  Follow [GitHub
  instructions](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/linking-a-pull-request-to-an-issue#manually-linking-a-pull-request-or-branch-to-an-issue-using-the-issue-sidebar)
  for linking a branch with an issue.  Use branch names like `123-implement-some-feature`.

- **Contributors should squash commits before submitting a PR.**  Use `git rebase` 

- **Strive for consistency** within and across projects unless you have a very good reason to do
  otherwise.

- **Keep PRs focused on a single issue.**  PRs that mix multiple goals are hard to read and
evalutate. Strive for PRs that result in [atomic
commits](http://en.wikipedia.org/wiki/Atomic_commit#Atomic_Commit_Convention). For example, don't
refactor/restructure/reformat code while implementating a feature; instead, separate those goals
into distinct PRs.

- **Strive for DRYness (Don't Repeat Yourself).**

- **PRs should include tests and documentation.** Test your code before committing. Tests
  must pass before merging.

- **Use [Semantic Versioning](https://semver.org/).**  Package versions are derived from
git tags in order to ensure that released software always corresponds to a git tag. We don't use a
"v" prefix.

- All source code is licensed under the Apache License, 2.0.

## Python-specific guidelines

- **We test and support at least the three most recent [full Python
  releases](https://devguide.python.org/versions/) at any point it time.**  We might test and
  advertise broader availability on a repo-by-repo basis.  However, we never want current
  development to be limited by a stale version of Python.

- **Packages must be based on the [biocommons.example
  repo](https://github.com/biocommons/biocommons.example).**  Updates
  to this template will occasionally be merged into the repos.

- **Don't catch exceptions unless you expect to respond meaningfully.** Mostly it helps to learn to
  just let it go, just like Elsa.

- Configuration: config env vars should be high in the stack, adjacent to other configuration, and
  passed down.  Env vars should typically not change behavior deep in a call stack. In no
  circumstance should an env var override an explicit setting higher in the stack. Debugging,
  logging, and other observability tooling are exceptions to this rule.

---

## Future Work: Topics to Write

- Branch, merge, and release strategy
- Release process, including changelogs
- vscode setup: common extensions, devcontainers, formatters
- sample coding session: issue, branch, code, test, format, push, request PR, merge
- semantic release
- commit message formats