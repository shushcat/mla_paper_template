pdf : references.bib mla-with-url.csl paper.md
	pandoc -S -o output.pdf --filter pandoc-citeproc paper.md

docx : references.bib mla-with-url.csl paper.md
	pandoc -S -o output.docx --filter pandoc-citeproc paper.md
