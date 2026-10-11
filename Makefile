# Makefile for biocommons.github.io (mkdocs site)

.DELETE_ON_ERROR:
.PHONY: FORCE
.PRECIOUS:
.SUFFIXES:

SHELL := /bin/zsh
.SHELLFLAGS := -e -u -o pipefail -o nullglob -c

.DEFAULT_GOAL := help
default: help

define INFO_MESSAGE
	@echo "⏩\033[1;38;5;208m$(1)\033[0m"
endef

############################################################################
#= BASIC USAGE

.PHONY: help
help: ## Display help message
	@./sbin/makefile-extract-documentation ${MAKEFILE_LIST}

############################################################################
#= SETUP

.PHONY: devready
devready: ## Prepare local dev env: Create virtual env and install dependencies
	$(call INFO_MESSAGE, "Prepare local dev env")
	uv sync

############################################################################
#= SITE

.PHONY: serve
serve: ## Build and serve the site with live reload
	$(call INFO_MESSAGE, "Build and serve site for local development")
	uv run mkdocs serve --livereload

.PHONY: deploy
deploy: check-links ## Check links, then deploy the site to GitHub Pages
	$(call INFO_MESSAGE, "Deploy site to GitHub Pages")
	git diff --quiet HEAD || { echo "❌ Working tree is dirty; commit or stash first" >&2; exit 1; }
	uv run mkdocs gh-deploy

.PHONY: check-links
check-links: ## Build the site and check relative links
	$(call INFO_MESSAGE, "Check relative links")
	uv run mkdocs build
	./bin/check-relative-links site/**/*.html

.PHONY: update-redirect-map
update-redirect-map: ## Update the redirect map
	$(call INFO_MESSAGE, "Update redirect map")
	cd docs; uv run ../bin/update-redirect-map

tree: FORCE ## Write docs directory tree to ./tree
	tree docs >$@

############################################################################
#= CLEANUP

.PHONY: clean
clean: ## Remove temporary and backup files
	$(call INFO_MESSAGE, "Remove temporary and backup files")
	rm -rf site
	rm -f **/*~

.PHONY: cleaner
cleaner: clean ## Remove files and directories that are easily rebuilt
	$(call INFO_MESSAGE, "Remove files and directories that are easily rebuilt")
	rm -fr *.egg-info

.PHONY: cleanest
cleanest: cleaner ## Remove files and directories that can be rebuilt
	$(call INFO_MESSAGE, "Remove files and directories that can be rebuilt")
	rm -rf .venv
