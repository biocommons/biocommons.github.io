# Style 

## General guidelines

- 100 column width
- YAML config, not TOML or JSON
- Strive for consistency within and across projects unless you have a very good reason to do
  otherwise.
- Don't x.y.z pin dependencies. In Python, use `~=x.y`
- Strive for DRYness (Don't Repeat Yourself)
- precommit hooks
- Makefiles are the entry point for all automation, and used in workflows/actions. Why? Guarantee
  same behavior local and remote (actions)
- Don't catch exceptions unless you expect to respond *meaningfully*.

### Casing

- executables are kebab-case
- command line arguments are kebab-case
- symbols are snake_case
- class names are PascalCase with capitalized abbeviations like PascalCaseRN
- camelCase is not used, even for json. (Why? Because json is typically just one
  embodiment of the data and it needs to work elsewhere)


## Python Guidelines

- docstring style
- use double quotes. (Why? Easier to embed single quotes if needed.)
- _logger at top of module. Use it.
- Use the biocommons package template for new code.  Existing repos are periodically synchronized
  with that repo.
