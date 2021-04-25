---
title: Paper Title
author: Author Name
hauthor: Header Author
instructor: Professor Name
course: Course Title
date: \today
bibliography: references.bib
header-includes:
nocite: |
    @2016pow
---

Most humanities departments in the US require that submitted papers be in MLA format.  This repository gathers the tools needed for producing MLA-formatted PDFs (or ODTs, or DOCXs) from text files written in Markdown.

# Prerequisites

In order to automatically generate the nicely-formatted PDFs I've promised you, you will need

- [Pandoc](http://pandoc.org/installing.html),
- [LaTeX](https://www.latex-project.org/get/), and
- Make (GNU or otherwise---should be present by default).

# Contents

- `README.md`: the document itself.
- `src/mla8.csl`: citation style information for MLA from http://citationstyles.org/.
- `src/hanging_indent_bib.latex`: centers the "Works Cited" header and sets indentation for bibliographic entries.
- `src/mla8_pandoc_template.latex`, `src/mla8_pandoc_template.opendocument`, and `src/mla8_pandoc_reference.docx`: MLA styling for the body of the document.
- `references.bib`: references (in [BibTeX format](https://en.wikipedia.org/wiki/BibTeX#Bibliographic_information_file)) go here.
- `Makefile`: build rules.

# Usage

1. Write your paper in this README file, using [Pandoc's Markdown flavor](http://pandoc.org/MANUAL.html#pandocs-markdown).
    - Change or delete the values in the YAML header as you see fit; the `hauthor` variable determines the author name shown in running headers.
    - Add references in BibTeX format to `references.bib`;
    - Include references in your "Works Cited" without citing them in the body of your paper by adding them, one per line, immediately below `nocite: |` in the YAML header, as with the reference to @2016pow (`@2016pow`) in this example document.
1. Write your paper in this README file, adding references to `references.bib` in BibTeX format.
3. Execute `make pdf`.
4. Open `output.pdf` and regard your work with a measure of sadness as you wonder whether you could have done better.

The `lib` directory is a handy place to tuck away any extra materials.

If you must, which you may, you can generate an MLA-formatted ODT or DOCX with `make odt` or `make docx`.
