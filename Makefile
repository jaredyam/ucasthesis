backup_dir := backup
Thesis.pdf: Thesis.tex Tex/*.tex
	@xelatex Thesis; bibtex Thesis; xelatex Thesis; xelatex Thesis
	@mkdir -p $(backup_dir)/$(shell date +"%Y-%m-%d")
	@cp Thesis.pdf $(backup_dir)/$(shell date +"%Y-%m-%d")/$(shell date +"%H-%M-%S").pdf
