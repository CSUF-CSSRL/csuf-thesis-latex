# Makefile
# Copyright 2013 Michael Shafae
#
# This work may be distributed and/or modified under the
# conditions of the LaTeX Project Public License, either version 1.3
# of this license or (at your option) any later version.
# The latest version of this license is in
#   http://www.latex-project.org/lppl.txt
# and version 1.3 or later is part of all distributions of LaTeX
# version 2005/12/01 or later.
#
# This work has the LPPL maintenance status `maintained'.
# 
# The Current Maintainer of this work is Michael Shafae.
#
# This work consists of the files listed in MANIFEST.txt
#
# Makefile
#

TARGET=Rachan_ThesisMaster.pdf
SRC=Rachan_ThesisMaster
TEX=pdflatex
pdf:
	$(TEX) $(SRC)

all:
	$(TEX) $(SRC) && $(TEX) $(SRC) && bibtex $(SRC) && $(TEX) $(SRC) && $(TEX) $(SRC)

clean:
	-rm *.aux *.bbl *.blg *.log *.out *.lof *.lot *.toc

spotless: clean
	-rm $(TARGET)

