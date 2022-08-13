all: $(file) clean

$(file): $(file).tex
	xelatex $(file).tex
	xelatex $(file).tex

clean: $(file)
	rm *.bbl *.aux *.blg *.fdb_latexmk *.out *.log *.toc *.fls *.lof *.lot *.run.xml *.bcf
	rm -rf _minted-$(file)
	rm -rf .auctex_auto
