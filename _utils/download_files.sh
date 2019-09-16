#! /bin/bash

DOWNLOAD_BASE="https://raw.githubusercontent.com/gnachman/iterm2-website/master/"

mkdir -p ./bin

while read -r file; do
    T=$(echo "${file}" | cut -d'/' -f2-)
    F="${T##*/}"
    curl -SsL "$DOWNLOAD_BASE/$T" > "./bin/$F"
    chmod a+x "./bin/$F"
    echo "Downloaded... $F"
done < files.sha256
