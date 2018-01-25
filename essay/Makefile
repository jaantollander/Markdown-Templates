BUILDDIR=build
FILENAME=essay

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME).pdf \
	--pdf-engine=xelatex \
	--variable urlcolor=cyan \
	--variable papersize=a4paper \
	--filter pandoc-citeproc \
	--bibliography=bibliography.bib \


pdf-twocolumn:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME)-twocolumn.pdf \
	--pdf-engine=xelatex \
	--variable urlcolor=cyan \
	--variable papersize=a4paper \
	--variable classoption=twocolumn \
	--filter pandoc-citeproc \
	--bibliography=bibliography.bib \


html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--mathjax \
	--to=html5 \
	--output=$(BUILDDIR)/$(FILENAME).html \
	--filter pandoc-citeproc \
	--bibliography=bibliography.bib \
	--self-contained \
