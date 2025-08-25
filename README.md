# biocommons.org website

## Setup

    python3 -m venv venv
    source venv/bin/activate
    pip install -U pip setuptools
    pip install -r requirements.txt

Also, you are strongly encouraged to use vscode to edit this site, with these extensions:

    - https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio
    - https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview
    - https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint
    - https://marketplace.visualstudio.com/items?itemName=tomoyukim.vscode-mermaid-editor 

If you want to add or edit diagrams, you must use the above configuration.

## Write

    source venv/bin/activate
    make serve

## Deploy

Deployment is manual, not using GitHub actions.

    source venv/bin/activate
    make deploy

## Redirect map

In order to ensure the continuity of urls, docs/redirect-map.yml tracks markdown file paths that
have existed at any time.  Use `make update-redirect-map` to update the file, then manually copy
selected redirects to mkdocs.yml in the redirect_map section.  (`mkdocs-redirects` does not
currenlty support redirects from a file :-()
