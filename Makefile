.PHONY: FORCE
.SUFFIXES:
.DELETE_ON_ERROR:


index.html: index.py index.yaml index.html.in
	./$^ >$@

