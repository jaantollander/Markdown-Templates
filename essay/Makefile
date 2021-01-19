BUILDDIR=build
FILENAME=essay

pdf-print:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME)-print.pdf \
	--pdf-engine=xelatex \

pdf-ereader:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME)-ereader.pdf \
	--pdf-engine=xelatex \
	--include-in-header="layout/ereader.tex"

pdf: pdf-print pdf-ereader

html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--to=html5 \
	--output=$(BUILDDIR)/$(FILENAME).html \
	--mathjax \
	--standalone
