BUILDDIR=build
FILENAME=slides
ASSETSDIR=assets

download-assets:
	mkdir $(ASSETSDIR) -p
	wget -O $(ASSETSDIR)/citation-style.csl https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--to=beamer \
	--output=$(BUILDDIR)/$(FILENAME).pdf \
	--pdf-engine=xelatex \
	--citeproc
