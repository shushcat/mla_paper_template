pdf :
	cat main.md > temp.md
	cat src/hanging_indent_bib.latex >> temp.md
	pandoc -S -o output.pdf --template=src/pandoc_template.latex --filter pandoc-citeproc temp.md
	rm temp.md

docx :
	pandoc -S -o output.docx --filter pandoc-citeproc main.md

clean:
	rm -rf *.pdf *.docx

# Must stay at end of Makefile for automatic removal
new : clean
	rm -rf .git README.md
	head --lines=-9 Makefile > Makefile.tmp
	mv Makefile.tmp Makefile
	git init .
	git add *
	git add .gitignore
	git commit -m "Initial commit"
