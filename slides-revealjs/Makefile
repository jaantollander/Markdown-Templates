BUILDDIR=build
FILENAME=slides
ASSETSDIR=assets

download-assets:
	mkdir $(ASSETSDIR) -p
	wget -O $(ASSETSDIR)/citation-style.csl https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl

download-revealjs:
	mkdir $(BUILDDIR) -p
	wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
	tar -xzvf master.tar.gz
	mv reveal.js-master $(BUILDDIR)/reveal.js
	rm master.tar.gz

html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_html \
	--to=revealjs \
	--output=$(BUILDDIR)/$(FILENAME).html \
	--mathjax \
	--variable revealjs-url=./reveal.js \
	--standalone

clean:
	rm -r build/*
