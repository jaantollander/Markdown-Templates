BUILDDIR=build
FILENAME=slides

download-revealjs:
	rm -r -f reveal.js
	wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
	tar -xzvf master.tar.gz
	mv reveal.js-master reveal.js
	rm master.tar.gz

html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--to=revealjs \
	--output=$(BUILDDIR)/$(FILENAME).html \
	--mathjax \
	--variable revealjs-url=../reveal.js \
	--variable theme=black \
	--variable transition=none \
	--standalone

html-self-contained:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--to=revealjs \
	--output=$(BUILDDIR)/$(FILENAME)-self-contained.html \
	--mathjax \
	--variable revealjs-url=./reveal.js \
	--variable theme=black \
	--standalone \
	--self-contained

clean:
	rm build/*
