#!/bin/bash
CONTENTDIR="content"
BUILDDIR="build"
FILENAME="index"
ASSETSDIR="assets"

pdf() {
    mkdir "${BUILDDIR}" -p
    echo "Creating pdf output"
    pandoc "${CONTENTDIR}/${FILENAME}.md" \
        --resource-path="${CONTENTDIR}" \
        --from="markdown+tex_math_single_backslash+tex_math_dollars" \
        --to="latex" \
        --output="${BUILDDIR}/output.pdf" \
        --pdf-engine="xelatex"
}

html() {
    mkdir "${BUILDDIR}" -p
    echo "Creating html output"
    pandoc "${CONTENTDIR}/${FILENAME}.md" \
        --resource-path="${CONTENTDIR}" \
        --from="markdown+tex_math_single_backslash+tex_math_dollars" \
        --to="html5" \
        --output="${BUILDDIR}/output.html" \
        --self-contained
}

epub() {
    mkdir "${BUILDDIR}" -p
    echo "Creating epub output"
    pandoc "${CONTENTDIR}/${FILENAME}.md" \
        --resource-path="${CONTENTDIR}" \
        --from="markdown+tex_math_single_backslash+tex_math_dollars" \
        --to="epub" \
        --output="${BUILDDIR}/output.epub"
}

# Allows to call a function based on arguments passed to the script
# Example: `./build.sh pdf`
$*
