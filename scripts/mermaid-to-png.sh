#!/bin/bash
#set -x
# npm install -g @mermaid-js/mermaid-cli
echo "change 'png' by 'svg' is possible
sourceFileName=$1
outFileName="${sourceFileName%%.*}"
mmdc -i $sourceFileName -o $outFileName.png -t default -b transparent