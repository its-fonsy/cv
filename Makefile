MAIN_TEX := cv.tex
SOURCES := $(MAIN_TEX) $(wildcard src/*.tex)

OUTPUT_FILENAME := cv_marco_fontana

ITA_FLAGS := -jobname=$(OUTPUT_FILENAME)_ita -pdf
ITA_FLAGS += -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifit\ittrue\input{%S}"'

ENG_FLAGS := -jobname=$(OUTPUT_FILENAME)_eng -pdf
ENG_FLAGS += -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\newif\ifen\newif\ifit\entrue\input{%S}"'

.PHONY: all clean distclean ita eng

all: ita eng

ita: $(OUTPUT_FILENAME)_ita.pdf

eng: $(OUTPUT_FILENAME)_eng.pdf

$(OUTPUT_FILENAME)_ita.pdf: $(SOURCES)
	latexmk $(ITA_FLAGS) $(MAIN_TEX)

$(OUTPUT_FILENAME)_eng.pdf: $(SOURCES)
	latexmk $(ENG_FLAGS) $(MAIN_TEX)

clean:
	rm -f *.synctex.gz *.aux *.fdb_latexmk *.fls *.log *.out

distclean: clean
	rm -f *.pdf *.dvi
