pdf :
	cat main.md > temp.md
	cat hanging_indent_bib.latex >> temp.md
	pandoc -S -o output.pdf --template=pandoc_template.latex --filter pandoc-citeproc temp.md
	rm temp.md

docx :
	cat main.md > temp.md
	echo >> temp.md
	echo "# Works Cited" >> temp.md
	pandoc -S -o output.docx --reference-docx=pandoc_reference.docx --filter pandoc-citeproc temp.md
	rm temp.md

odt :
	cat main.md > temp.md
	echo >> temp.md
	echo "# Works Cited" >> temp.md
	pandoc -S -o output.odt --template=pandoc_template.opendocument --filter pandoc-citeproc temp.md
	rm temp.md

clean:
	rm -rf output.*

# Must stay at end of Makefile for automatic removal
new : clean
	rm -rf .git README.md
	head --lines=-9 Makefile > Makefile.tmp
	mv Makefile.tmp Makefile
	git init .
	git add *
	git add .gitignore
	git commit -m "Initial commit"
