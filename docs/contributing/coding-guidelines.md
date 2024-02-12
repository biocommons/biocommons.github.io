# Coding Guidelines

Coding guidelines are a set of conventions to create consistency across projects, which makes it
easier for our colleagues to contribute across our projects.

Coding guidelines will be enforced by precommit hooks, GitHub actions, and
[`@biocommons/maintainers`](https://github.com/orgs/biocommons/teams/maintainers) during pull
request review.

All rules have exceptions, but exceptions should be rare because consistency is important.

## Current State & Goals

- Issue templates: Standardized issue and PR templates in the [.github
  repo](https://github.com/biocommons/.github) → no change
- Python repo consistency: The
  [biocommons.example](https://github.com/biocommons/biocommons.example/) template repo is the
  source of all Python repo config. Repos are periodically synchronized to match upstream changes →
  maintainers should ensure that repos are kept up-to-date with upstream changes from the
  biocommons.example repo.
- GitHub Actions: Repos have own GitHub Actions → centralize actions in the [.github
  repo](https://github.com/biocommons/.github) where reasonable
- Commit comments: We currently use unconstrainted commit message styles. → Adopt [Conventional
  Commits](https://www.conventionalcommits.org/), ideally using precommit hooks and GitHub Actions.
- Code Styling: We currently use black/isort/pylint → Migrate to ruff in precommit hooks and GitHub
  Actions. 
- Setup recommendations: Local python virtual environment → Add devcontainer configuration for
  reliable configuration on all platforms.
- Release process: changelog with home-grown script → use github release process
- Branching strategy: Unclear/overcomplicated strategy → create and adopt branching strategy.

## General guidelines

- All source code is licensed under the [Apache License 2.0](https://opensource.org/license/apache-2-0/).
- All data are released under the [Creative Commons BY-SA](https://creativecommons.org/licenses/by-sa/4.0/) deed.
- The default column width is 100 chars.
- Strive for consistency within and across projects unless you have a very good reason to do
  otherwise.
- Strive for DRYness (Don't Repeat Yourself).
- Makefiles are the entry point for all automation including workflows/actions. Why? Guarantee
  same behavior local and remote (actions)
- Don't catch exceptions unless you expect to respond *meaningfully*.
- Pin dependencies to major.minor versions (e.g., `~=x.y`); don't pin to patch versions
- precommit hooks
- Don't catch exceptions unless you expect to respond meaningfully. 
- Default to YAML for config files; don't use TOML except for pyproject.toml.
- Dates and times should always be stored internally as UTC.

## Casing

- executables and command-line arguments are `kebab-case`
- symbols (variables, functions/methods, etc) are `snake_case`
- constants are `SCREAMING_SNAKE_CASE`
- class names are `PascalCase` with capitalized abbeviations like `CLIOptions`
- `camelCase` is not used, even for json. (Why? Because json is typically just one embodiment of the
  data and it needs to work elsewhere)

## Configuration

- Packages should have reasonable defaults, perhaps in YAML files (see hgvs)
- The preference order of config is:
    command line > environment variable > a user-specified config file > defaults
- Env vars should typically not change behavior deep in a call stack.  Instead, their values should
  be passed as parameters.

## Python Guidelines

- MUST use [biocommons.example](https://github.com/biocommons/biocommons.example/) as basis for new and existing code patterns.
- MUST use double quotes by default.
- MUST use Google docstring style. (Tip: use vscode)
- SHALL support the three most recent [Python releases](https://devguide.python.org/versions).
- SHOULD use `_logger = logging.getLogger(__name__)` at top of module
- SHOULD use typing wherever possible.

### Preferred packages

- argparse (not click)
- coloredlogs (not logging)
- pytest
- PyYAML
- requests
- smart-open

