---
title: A Paper's Title
author: Author's Name
instructor: Professor's Name
course: Course Title
date: \today
csl: src/mla8.csl
bibliography: references.bib
nocite: |
    @2016pow
---

Rather than filling this paper with automatically generated text, it would be better to use it as a guide to both MLA style guide and Markdown syntax.^[In particular, there have been times that I have forgotten how to make footnotes.]

Most humanities departments in the US require that submitted papers be in MLA format.  This repository gathers the tools needed for producing MLA-formatted PDFs from text files written in Markdown.

# Prerequisites

In order to automatically generate the nicely-formatted PDFs I've promised you, first make sure you have
- [Pandoc](http://pandoc.org/installing.html),
- [LaTeX](https://www.latex-project.org/get/), and
- Make (GNU or otherwise---should be present by default).

# Contents

- `README.md`: the document itself.
- `src/mla8.csl`: citation style information for MLA from http://citationstyles.org/.
- `src/hanging_indent_bib.latex`: makes sure that the "Works Cited" section is unnumbered and its entries have hanging indents.
- `src/pandoc_template.latex`: MLA styling for the body of the document.
- `references.bib`: references (in [BibTeX format](https://en.wikipedia.org/wiki/BibTeX#Bibliographic_information_file)) go here.
- `Makefile`: build rules.

# Usage

1. Add references to `references.bib` in BibTeX format.
2. Type up the paper using [Pandoc's Markdown flavor](http://pandoc.org/MANUAL.html#pandocs-markdown).
3. Execute `make pdf`.
4. Open `output.pdf` and regard your work with a measure of sadness as you wonder whether you could have done better.

The `lib` directory is a handy place to tuck away any extra materials.
