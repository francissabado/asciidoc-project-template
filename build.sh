#!/bin/bash -e

#Usage
#build.sh <asciidoc>

#Regular HTML5 Build
asciidoctor $1

#Regular HTML5 Build with table of contents
asciidoctor -a toc $1 -o ${1}.toc.html

#Regular HTML5 Build with linkcss
asciidoctor -a linkcss $1 -o ${1}.linkcss.html

#Regular HTML5 Build with data-uri embedded
asciidoctor -a data-uri $1 -o ${1}.datauri.html

#Doc5 Format
asciidoctor -b docbook $1

#XHTML Format
asciidoctor -b xhtml5 $1

#PDF Format
asciidoctor -v -r asciidoctor-pdf -b pdf $1
