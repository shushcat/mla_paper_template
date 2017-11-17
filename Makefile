pdf : references.bib hanging_indent_bib.latex mla8.csl main.md
	cat main.md > temp.md
	cat hanging_indent_bib.latex >> temp.md
	pandoc -S -o output.pdf --template=pandoc_template.latex --filter pandoc-citeproc temp.md
	rm temp.md

docx : references.bib mla8.csl main.md
	pandoc -S -o output.docx --filter pandoc-citeproc main.md

# Must stay at end of Makefile for automatic removal
new :
	rm -rf .git README.md *.pdf
	head --lines=-9 Makefile > Makefile.tmp
	mv Makefile.tmp Makefile
	git init .
	git add *
	git add .gitignore
	git commit -m "Initial commit"
