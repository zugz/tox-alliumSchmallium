%.tex: %.beamer.md
	pandoc -s -t beamer $< -V colortheme:seagull -o $@

%.pdf: %.beamer.md
	pandoc -t beamer $< -V colortheme:seagull -o $@

%.md : %.md.sed %.md.in
	sed -f $^ > $@


#%.pdf: %.tex %.bbl
#	pdflatex $<
#	pdflatex $<

#%.aux: %.tex
#	pdflatex $<

#%.bbl: %.bib %.aux
#	bibtex $(<:%.bib=%)

test: alliumSchmallium.pdf
	fbpdf $<
