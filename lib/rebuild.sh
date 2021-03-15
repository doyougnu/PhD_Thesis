#!/usr/bin/env bash

ERR=$'I could not find latexmk\n May I suggest:\n\tMacOSX: \n\t\tsudo tlmgr install latexmk\n\n\tLinux(Debian and similar): \n\t\tsudo apt-get install latexmk\n\n\tWindows: \n\t\t get perl..yes perl: http://strawberryperl.com/ \n\t\t then MikTex: https://miktex.org/ \n Else: \n\t https://mg.readthedocs.io/latexmk.html'

nl=$'\n'

command -v latexmk >/dev/null 2>&1 ||
    { echo >&2 "I couldn't find latexmk, which I use to compile. May I suggest: $ERR $nl Aborting."; exit 1; }

# use --shell-escape for the minted package
latexmk -pdf --shell-escape thesis.tex
# latexmk -e '$pdflatex=q/pdflatex %O -shell-escape %S/' -pdf
# bibtex vsat_paper.tex
# latexmk -pdf vsat_paper.tex
# latexmk -pdf vsat_paper.tex
