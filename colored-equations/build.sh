#!/bin/bash
BUILDDIR=build
FILENAME=index

pdf() {
    mkdir ${BUILDDIR} -p
    pandoc ${FILENAME}.md \
        --from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
        --to=latex \
        --output=${BUILDDIR}/output.pdf \
        --pdf-engine=xelatex
}

# Allows to call a function based on arguments passed to the script
# Example: `bash build.sh pdf`
$*
