# Curriculum Vitae with LaTeX

This github repo host the files that I use to generate my curriculm vitae.
It uses `latexmk` to generate the pdfs.

To generate the curricula simply clone the repo and make the pdfs

    git clone git@github.com:its-fonsy/cv.git
    make all

To delete all the temporary files run

    make clean

and to also delete the generated pdfs

    make distclean
