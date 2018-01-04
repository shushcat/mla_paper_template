This repository aims to make it somewhat easier to write papers in MLA format, as is required by most humanities departments in the US.  Since I'm a reasonable person who would like to be able to read source documents later, and who likes the tools afforded by version control, I'd prefer doing this in plain text.

# Contents

- `main.md`: the document itself.
- `mla8.csl`: citation style information for MLA from [](http://citationstyles.org/).
- `hanging_indent_bib.latex`: makes sure that the "Works Cited" section is unnumbered and its entries with hanging indents.
- `pandoc_template.latex`: MLA styling for the body of the document.
- `references.bib`: references (in [BibTeX format](https://en.wikipedia.org/wiki/BibTeX#Bibliographic_information_file)) go here.
- `Makefile`: build rules.

# Requirements

In order to automatically generate the nicely-formatted PDFs I've promised you, first make sure you have
- [Pandoc](http://pandoc.org/installing.html),
- [LaTeX](https://www.latex-project.org/get/),
- Make (GNU or otherwise---should be present by default), and
- A text editor.

# Usage

1. Execute `make new` to
    - remove the README along with any generated files,
    - remove the "new" rule from the Makefile, and
    - initialize the directory as a new Git repository.
2. Gather reference materials, savings them to `lib` and adding them to `references.bib` as you go along.
3. Type up a paper, using [Pandoc's Markdown flavor](http://pandoc.org/MANUAL.html#pandocs-markdown).
4. Execute `make pdf`.
4. Open `output.pdf` and regard your work with a measure of sadness; wonder whether you could have done better.

The `lib` directory is a handy place to tuck away any extra materials.

# TODO

- [ ] Setup citation management bindings.  This might end up requiring that I write an Emacs mode, which I will endeavor to view as a fun challenge rather than a heinous waste of time.
