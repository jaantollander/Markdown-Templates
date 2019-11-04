BUILDDIR=build
FILENAME=essay

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME).pdf \
	--pdf-engine=xelatex \
	--filter pandoc-citeproc

html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--mathjax \
	--to=html5 \
	--output=$(BUILDDIR)/$(FILENAME).html \
	--filter pandoc-citeproc \
	--self-contained
