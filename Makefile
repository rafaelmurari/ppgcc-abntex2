PREFIX = monograph
PDFLATEX = pdflatex
BIBTEX = bibtex

all: $(PREFIX).pdf

$(PREFIX).pdf: $(PREFIX).tex
	$(PDFLATEX) $(PREFIX).tex
	$(BIBTEX) $(PREFIX).aux
	$(PDFLATEX) $(PREFIX).tex
	$(PDFLATEX) $(PREFIX).tex

clean:
	rm *.{log,toc,aux,bbl,blg,pdf,idx,lot,lof}
	rm content/*/*.aux
