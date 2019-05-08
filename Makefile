pdf :
	cat README.md > temp.md
	cat src/hanging_indent_bib.latex >> temp.md
	pandoc -S -o output.pdf --template=src/pandoc_template.latex --filter pandoc-citeproc temp.md
	rm temp.md

docx :
	cat README.md > temp.md
	echo >> temp.md
	echo "# Works Cited" >> temp.md
	pandoc -S -o output.docx --reference-docx=src/pandoc_reference.docx --filter pandoc-citeproc temp.md
	rm temp.md

odt :
	cat README.md > temp.md
	echo >> temp.md
	echo "# Works Cited" >> temp.md
	pandoc -S -o output.odt --template=src/pandoc_template.opendocument --filter pandoc-citeproc temp.md
	rm temp.md

clean:
	rm -rf output.*
