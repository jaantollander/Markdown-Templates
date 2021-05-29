BUILDDIR=build
FILENAME=book
ASSETSDIR=assets

download-assets:
	mkdir $(ASSETSDIR) -p
	wget -O $(ASSETSDIR)/citation-style.csl https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl

epub:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--to=epub \
	--output=$(BUILDDIR)/$(FILENAME).epub \
	--epub-cover-image="$(ASSETSDIR)/cover.png" \
	--mathml \
	--toc
