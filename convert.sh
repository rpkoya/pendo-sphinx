#!/bin/bash
for f in *.md ; do pandoc ${f} -f markdown -t rst -s -o $(basename "$f" .md).rst; rm "$f"  ; done
cp ../base-sphinx/conf.py .
cp ../base-sphinx/Makefile .

