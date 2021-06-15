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

download_revealjs() {
    mkdir ${BUILDDIR} -p
    wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
    tar -xzvf master.tar.gz
    mv reveal.js-master ${BUILDDIR}/reveal.js
    rm master.tar.gz
}

html() {
    mkdir "${BUILDDIR}" -p
    echo "Creating html output"
    pandoc "${CONTENTDIR}/${FILENAME}.md" \
        --resource-path="${CONTENTDIR}" \
        --citeproc \
        --csl="${ASSETSDIR}/citation-style.csl" \
        --from="markdown+tex_math_single_backslash+tex_math_dollars" \
        --to="revealjs" \
        --output="${BUILDDIR}/output.html" \
        --variable revealjs-url="./reveal.js" \
        --mathjax \
        --standalone
}

clean() {
    rm -r ${BUILDDIR}/*
}

# Allows to call a function based on arguments passed to the script
# Example: `./build.sh html`
$*
