.PHONY: FORCE
.SUFFIXES:
.DELETE_ON_ERROR:


index.html: index.py index.yaml index.html.in
	./$^ >$@

remake:
	while true; do make index.html; sleep 5; done
