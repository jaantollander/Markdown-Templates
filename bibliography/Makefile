FILENAME=bibliography

pdf:
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=latex \
	--output=$(FILENAME).pdf \
	--pdf-engine=xelatex \
	--variable urlcolor=cyan \
	--filter pandoc-citeproc \
	--csl=harvard.csl

html:
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=html \
	--output=$(FILENAME).html \
	--filter pandoc-citeproc


.PHONY: pdf
