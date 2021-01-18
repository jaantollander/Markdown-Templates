BUILDDIR=build
FILENAME=bibliography

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME).pdf \
	--pdf-engine=xelatex \
	--citeproc

html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--to=html5 \
	--output=$(BUILDDIR)/$(FILENAME).html \
	--citeproc \
	--self-contained

all: pdf html
