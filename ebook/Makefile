BUILDDIR=build
FILENAME=book

epub:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--filter pandoc-citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--to=epub \
	--output=$(BUILDDIR)/$(FILENAME).epub \
	--epub-cover-image=cover.png \
	--toc
