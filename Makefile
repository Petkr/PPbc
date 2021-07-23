all: prace.pdf abstrakt-en.pdf abstrakt-sk.pdf

prace.pdf: prace.tex $(wildcard *.tex) literatura.bib prace.xmpdata
	pdflatex $<
	bibtex prace
	pdflatex $<
	pdflatex $<

abstrakt-en.pdf: abstrakt-en.tex abstrakt.xmpdata
	pdflatex $<

abstrakt-sk.pdf: abstrakt-sk.tex abstrakt.xmpdata
	pdflatex $<

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg *.xmpi
	rm -f prace.pdf abstrakt-en.pdf abstrakt-sk.pdf
