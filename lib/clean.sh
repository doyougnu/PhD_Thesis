#!/usr/bin/env bash

# for dir in ./*; do (cd "$dir"; pwd); done
find . -maxdepth 1 -type d -execdir sh -c "cd '{}'; rm -rf *.aux *.fdb_latexmk *.fls *.log *.fls *.cls *.sta *.bbl *.blg *.out *.pyg *.synctex.gz *.cut " \;
