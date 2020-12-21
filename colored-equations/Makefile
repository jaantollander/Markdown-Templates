BUILDDIR=build
FILENAME=document

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME).pdf \
	--pdf-engine=xelatex
