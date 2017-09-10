pdf : references.bib mla-with-url.csl main.md
	pandoc -S -o output.pdf --filter pandoc-citeproc main.md

docx : references.bib mla-with-url.csl main.md
	pandoc -S -o output.docx --filter pandoc-citeproc main.md
