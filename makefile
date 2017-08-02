book.pdf : book1.tex
	pdflatex book1.tex book.pdf

book1.tex : book1.lytex
	lilypond-book --latex-program=pdflatex book1.lytex
