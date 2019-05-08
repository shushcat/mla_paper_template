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

Rather than filling this paper with automatically generated text, it would be better to use it as an MLA style guide, based on *The Purdue OWL*.^[OWL being an abbreviation for Online Writing Lab.]

Most humanities departments in the US require that submitted papers be in MLA format.  This repository gathers the tools needed for producing MLA-formatted PDFs from text files written in Markdown.

# Prerequisites

In order to automatically generate the nicely-formatted PDFs I've promised you, first make sure you have
- [Pandoc](http://pandoc.org/installing.html),
- [LaTeX](https://www.latex-project.org/get/),
- Make (GNU or otherwise---should be present by default), and
- A text editor.

# Contents

- `main.md`: the document itself.
- `mla8.csl`: citation style information for MLA from http://citationstyles.org/.
- `hanging_indent_bib.latex`: makes sure that the "Works Cited" section is unnumbered and its entries have hanging indents.
- `pandoc_template.latex`: MLA styling for the body of the document.
- `references.bib`: references (in [BibTeX format](https://en.wikipedia.org/wiki/BibTeX#Bibliographic_information_file)) go here.
- `Makefile`: build rules.

# Usage

1. Execute `make new` to
    - remove the README along with any generated files,
    - remove the "new" rule from the Makefile, and
    - initialize the directory as a new Git repository.
2. Gather reference materials, adding entries for each work to `references.bib` as you go along.
3. Type up a paper, using [Pandoc's Markdown flavor](http://pandoc.org/MANUAL.html#pandocs-markdown).
4. Execute `make pdf`.
4. Open `output.pdf` and regard your work with a measure of sadness; wonder whether you could have done better.

The `lib` directory is a handy place to tuck away any extra materials.
