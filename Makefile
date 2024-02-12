.PHONY: FORCE
.SUFFIXES:
.DELETE_ON_ERROR:


deploy:
	mkdocs gh-deploy

serve:
	mkdocs serve

update-redirect-map: docs/redirect-map.yml

docs/redirect-map.yml:
	cd docs; ../bin/update-redirect-map

redirects.yml: docs/redirect-map.yml
	# put these in mkdocs.yml:
	./bin/extract-redirects $< >$@

check-links:
	mkdocs build
	./bin/check-relative-links site/**/*.html
	