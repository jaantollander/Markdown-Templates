FILENAME=slides

pdf:
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=beamer \
	--output=$(FILENAME).pdf \
	--pdf-engine=xelatex \
	--variable urlcolor=cyan \
	--filter pandoc-citeproc


.PHONY: pdf
