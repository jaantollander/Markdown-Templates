BUILDDIR=build
FILENAME=slides

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=beamer \
	--output=$(BUILDDIR)/$(FILENAME).pdf \
	--pdf-engine=xelatex \
	--variable urlcolor=cyan \
	--filter pandoc-citeproc \
	--bibliography=bibliography.bib \
