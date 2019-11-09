BUILDDIR=build
FILENAME=book

epub:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--output=$(BUILDDIR)/$(FILENAME).epub \
	--epub-cover-image=cover-1600x2400.png \
	--filter pandoc-citeproc \
	--toc
