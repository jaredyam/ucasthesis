compile: Thesis.tex
	@bibtex Thesis.aux && xelatex Thesis.tex && xelatex Thesis.tex
