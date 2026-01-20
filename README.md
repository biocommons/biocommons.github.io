# biocommons.org website

**Note: As with other biocommons projects, you must have `uv` installed.**

## Setup

    uv sync

### VS Code Extensions

Also, you are strongly encouraged to use vscode to edit this site, with these extensions:

    - https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio
    - https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview
    - https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint
    - https://marketplace.visualstudio.com/items?itemName=tomoyukim.vscode-mermaid-editor 

## Write

    make serve

## Redirect map

In order to ensure the continuity of urls, docs/redirect-map.yml tracks markdown file paths that
have existed at any time.  Use `make update-redirect-map` to update the file, then manually copy
selected redirects to mkdocs.yml in the redirect_map section.  (`mkdocs-redirects` does not
currently support redirects from a file, but it's been requested in at least
[#47](https://github.com/mkdocs/mkdocs-redirects/issues/47) and
[#68](https://github.com/mkdocs/mkdocs-redirects/issues/68), and there's a long-ignored PR in
[#57](https://github.com/mkdocs/mkdocs-redirects/pull/57))
