TEX := cv_marco_fontana_eng.tex cv_marco_fontana_ita.tex
PDF := $(TEX:%.tex=%.pdf)

.PHONY: all clean distclean

all: $(PDF)

%.pdf : %.tex
	latexmk --pdf $<

clean:
	rm -f *.synctex.gz *.aux *.fdb_latexmk *.fls *.log *.out

distclean: clean
	rm -f *.pdf
