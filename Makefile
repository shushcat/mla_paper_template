PDF_ENGINE=pdflatex

pdf :
	cat README.md > temp.md
	cat src/hanging_indent_bib.latex >> temp.md
	pandoc --pdf-engine=$(PDF_ENGINE) --citeproc --csl=src/mla8.csl -o output.pdf --template=src/mla8_pandoc_template.latex temp.md
	rm temp.md

pdfroff :
	cat README.md > temp.md
	cat src/hanging_indent_bib.md >> temp.md
	pandoc --csl=src/mla8.csl -t ms -o output.pdf --template=src/mla8_pandoc_template.roff temp.md --citeproc
	rm temp.md

docx :
	cat README.md > temp.md
	echo >> temp.md
	echo "# Works Cited" >> temp.md
	pandoc -o output.docx --reference-docx=src/mla8_pandoc_reference.docx --citeproc temp.md
	rm temp.md

odt :
	cat README.md > temp.md
	echo >> temp.md
	echo "# Works Cited" >> temp.md
	pandoc -o output.odt --template=src/mla8_pandoc_template.opendocument --citeproc temp.md
	rm temp.md

clean:
	rm -rf output.*
