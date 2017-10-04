pdf : references.bib hanging-indent.latex mla8.csl main.md
	cat main.md > temp.md
	cat hanging-indent.latex >> temp.md
	pandoc -S -o output.pdf --filter pandoc-citeproc temp.md
	rm temp.md

docx : references.bib mla8.csl main.md
	pandoc -S -o output.docx --filter pandoc-citeproc main.md
