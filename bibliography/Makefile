BUILDDIR=build
FILENAME=bibliography
ASSETSDIR=assets

download-assets:
	mkdir $(ASSETSDIR) -p
	wget -O $(ASSETSDIR)/citation-style.csl https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl

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
