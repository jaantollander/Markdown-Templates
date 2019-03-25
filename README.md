# Markdown Templates
<!-- TODO: image: editor <-> document -->

This repository contains document templates for writing with Markdown. It's related to my article [*Scientific Writing with Markdown*](https://jaantollander.com/2018-01-25-writing-markdown.html) which discussed how to write documents, including scientific document, using Markdown. The article was inspired by the article [*How to make a scientific looking PDF from markdown (with bibliography)*](https://gist.github.com/maxogden/97190db73ac19fc6c1d9beee1a6e4fc8).

The main advantage of writing documents using Markdown is its relative simplicity compared to pure LaTeX but still being simple plain text format instead of binary formats such as MS Word or Google Docs.


## Contents
Each document template contains the following files:

- `<filename>.md` -- File containing the text written in Markdown.
- `bibliography.bib` -- File containing the bibliographic entries (references) in BibTeX format.
- `Makefile` -- Contains the commands for converting the markdown file into the output document format such as PDF or HTML.

The `Makefile` is structured as follows:
```bash
BUILDDIR=build
FILENAME=<filename>

<command>:
    mkdir $(BUILDDIR) -p  # Create the BUILDDIR if it doesn't already exist.
    pandoc $(FILENAME).md \
    ... # Options
```

- `<filename>` is the Markdown filename without the `.md` extension.
- `<command>` is substituted with the document type name.
- `pandoc` command creates the output document type. The options followed the command is specific to the document type.


## Instructions
The compilation process requires the following software:

- [Pandoc](https://pandoc.org/) -- Required for converting between the Markdown files into other document formats.
- [LaTeX](https://www.latex-project.org/) -- Required for creating PDF documents.
- Make -- Required for using Makefiles. (Installed by default on Unix systems.)

The documents can be compiled using Make.
```bash
make <command>
```
The output will appear into the `BUILDDIR` directory specified in the `Makefile`.


## Resources
- [Bibtex style examples](https://verbosus.com/bibtex-style-examples.html)
- [Citation Style](http://citationstyles.org/)
- [Zotero Styles](https://www.zotero.org/styles)
- [Citation Styles (GitHub)](https://github.com/citation-style-language/styles)
