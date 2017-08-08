all : ukulele.pdf recorder.pdf

ukulele.pdf : ukulele.tex intro.tex
	pdflatex ukulele.tex ukulele.pdf

ukulele.tex : ukulele.lytex
	lilypond-book --latex-program=pdflatex ukulele.lytex

recorder.pdf : recorder.tex intro.tex
	pdflatex recorder.tex recorder.pdf

recorder.tex : recorder.lytex intro.lytex
	lilypond-book --latex-program=pdflatex recorder.lytex

intro.tex : intro.lytex
	lilypond-book --latex-program=pdflatex intro.lytex
