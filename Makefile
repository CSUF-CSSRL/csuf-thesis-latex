
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

