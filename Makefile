pdf :
	cat README.md > temp.md
	cat src/hanging_indent_bib.latex >> temp.md
	pandoc --citeproc --csl=src/modern-language-association.csl -o output.pdf --template=src/pandoc_template.latex temp.md
	rm temp.md

docx :
	cat README.md > temp.md
	echo >> temp.md
	echo "# Works Cited" >> temp.md
	pandoc -o output.docx --reference-docx=src/pandoc_reference.docx --citeproc temp.md
	rm temp.md

odt :
	cat README.md > temp.md
	echo >> temp.md
	echo "# Works Cited" >> temp.md
	pandoc -o output.odt --template=src/pandoc_template.opendocument --citeproc temp.md
	rm temp.md

clean:
	rm -rf output.*
