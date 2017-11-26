This repository aims to make it somewhat easier for me to write papers in MLA format, as is required by most humanities departments in the US.  Since I'm a reasonable person, I'd prefer doing this in plain text rather than using whatever shit Microsoft happens to be pushing.

# Usage

1. Execute `make new` to
    - remove the README along with any generated files,
    - remove the "new" rule from the Makefile, and
    - initialize the directory as a new Git repository.
2. Gather reference materials, savings them to `lib` and adding them to `references.bib` as you go along.
3. Type up a paper.
4. Wonder whether you could have done better.

Reference materials go in `lib` with `references.bib`.

# TODO

- [ ] Setup citation management bindings.  This might end up requiring that I write an Emacs mode, which I will endeavor to view as a fun challenge rather than a massive, heinous waste of time.
