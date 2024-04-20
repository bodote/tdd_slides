#!/bin/bash
#set -x
# npm install -g @mermaid-js/mermaid-cli
sourceFileName=$1
outFileName="${sourceFileName%%.*}"
mmdc -i $sourceFileName -o assets/mermaid/$outFileName.png -t default -b transparent