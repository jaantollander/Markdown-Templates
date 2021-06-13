#!/bin/bash
CONTENTDIR="content"
BUILDDIR="build"
FILENAME="index"
ASSETSDIR="assets"

download_assets() {
    mkdir "${ASSETSDIR}" -p
    wget -O "${ASSETSDIR}/citation-style.csl" \
        "https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl"
}

epub() {
    mkdir "${BUILDDIR}" -p
    echo "Creating epub output"
    pandoc "${CONTENTDIR}/${FILENAME}".md \
        --citeproc \
        --csl="${ASSETSDIR}/citation-style.csl" \
        --from="markdown+tex_math_single_backslash+tex_math_dollars" \
        --to="epub" \
        --output="${BUILDDIR}/output.epub" \
        --epub-cover-image="${ASSETSDIR}/cover.png" \
        --mathml \
        --resource-path="${CONTENTDIR}" \
        --toc
}

# Allows to call a function based on arguments passed to the script
# Example: `./build.sh epub`
$*
