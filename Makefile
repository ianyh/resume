LATEX=latex
DVIPS=dvips
PS2PDF=ps2pdf

INPUT=hwtemplate
OUTPUT=output

all: dviclean $(OUTPUT).ps $(OUTPUT).pdf

$(OUTPUT).pdf: $(OUTPUT).ps
	$(PS2PDF) $(OUTPUT).ps > $(OUTPUT).pdf

$(OUTPUT).ps: $(INPUT).dvi
	$(DVIPS) -t letter -f $(INPUT).dvi > $(OUTPUT).ps

$(INPUT).dvi: $(INPUT).tex
	$(LATEX) $(INPUT).tex

clean:
	/bin/rm -f *.dvi *.aux *~ *.log *.lot *.lof *.toc *.blg *.bbl 
dviclean:
	/bin/rm -f *.dvi 
