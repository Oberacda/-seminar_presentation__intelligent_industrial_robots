LATEX_COMPILER = pdflatex
LATEX_BIBTOOL = biber
LATEX_GLOSSARIES = makeglossaries

all: | latex_0 bibliography latex_1 latex_2

no_bib: | latex_0 latex_1 latex_2

clean: *.tex
	rm -f $(wildcard *.aux)
	rm -f $(wildcard *.log)
	rm -f $(wildcard *.nav)
	rm -f $(wildcard *.out)
	rm -f $(wildcard *.snm)
	rm -f $(wildcard *.toc)
	rm -f $(wildcard *.bbl)
	rm -f $(wildcard *.blg)
	rm -f $(wildcard *.zip)
	rm -f $(wildcard *~)
	rm -f $(wildcard *.bcf)
	rm -f $(wildcard *.xml)
	rm -f $(wildcard *.acn)
	rm -f $(wildcard *.acr)
	rm -f $(wildcard *.alg)
	rm -f $(wildcard *.ist)
	rm -f $(wildcard *.glg)
	rm -f $(wildcard *.glo)
	rm -f $(wildcard *.gls)
	rm -f $(wildcard *.gz)

distclean: *.tex clean
	rm -f $(wildcard *.pdf)
	
bibliography: *.tex
	${LATEX_BIBTOOL} seminar_presentation__intelligent_industrial_robots

latex_0: *.tex
	${LATEX_COMPILER} -interaction=nonstopmode seminar_presentation__intelligent_industrial_robots.tex
latex_1: *.tex
	${LATEX_COMPILER} -interaction=nonstopmode seminar_presentation__intelligent_industrial_robots.tex
latex_2: *.tex
	${LATEX_COMPILER} -interaction=nonstopmode seminar_presentation__intelligent_industrial_robots.tex
