SHELL:=/bin/bash
PATH:=../../bin:${PATH}

ISSUES:=hgvs-eval\#20 biocommons.seqrepo\#136 hgvs\#721

default: $(addsuffix .md, ${ISSUES})

%.md:
	@r=$$(expr "$@" : "\(.*\)\#"); \
	n=$$(expr "$@" : ".*\#\(.*\)\.md"); \
	fetch-issue-as-markdown "$$r" "$$n" >$@
