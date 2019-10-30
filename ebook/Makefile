BUILDDIR=build
FILENAME=book

epub:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash \
	--output=$(BUILDDIR)/$(FILENAME).epub \
	--epub-cover-image=cover-1600x2400.png \
	--filter pandoc-citeproc \
	--bibliography=bibliography.bib \
	--toc \
	--csl=https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl \
