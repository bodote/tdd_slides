#!/bin/bash
#set -x
sourceFileName=$1
outFileName="${sourceFileName%%.*}"

mmdc -i $sourceFileName -o assets/mermaid/$outFileName.png -t default -b transparent