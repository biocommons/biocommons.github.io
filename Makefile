.PHONY: FORCE
.SUFFIXES:
.DELETE_ON_ERROR:

default:
	@echo 'No $@ target. Try `make serve`.' 1>&2
	exit 1

devready:
	uv sync

deploy:
	uv run mkdocs gh-deploy

serve:
	uv run mkdocs serve --livereload

tree: FORCE
	tree docs >$@

update-redirect-map:
	cd docs; ../bin/update-redirect-map

check-links:
	uv run mkdocs build
	./bin/check-relative-links site/**/*.html

.PHONY: clean cleaner cleanest
clean:
	rm -rf site
	rm -f **/*~
cleaner: clean
	rm -fr *.egg-info
cleanest: cleaner
	rm -rf .venv
