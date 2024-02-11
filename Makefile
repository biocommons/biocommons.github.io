.PHONY: FORCE
.SUFFIXES:
.DELETE_ON_ERROR:


deploy:
	mkdocs gh-deploy

serve:
	mkdocs serve

update-redirect-map:
	cd docs; ../bin/update-redirect-map

check-links:
	mkdocs build
	./bin/check-relative-links site/**/*.html
	