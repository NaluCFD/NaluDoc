all: nalu_tpetra_doc

dvi: nalu_tpetra_doc.dvi

pdf: nalu_tpetra_doc.pdf

html: nalu_tpetra_doc_html

LATEXSRC := $(wildcard *.tex) $(wildcard *.sty)
UTILSRC := $(wildcard ../../../code/stk/stk_doc_tests/stk_util/*.cpp)
IOSRC := $(wildcard ../../../code/stk/stk_doc_tests/stk_io/*.cpp)
MESHSRC := $(wildcard ../../../code/stk/stk_doc_tests/stk_mesh/*.cpp) $(wildcard ../../../code/stk/stk_mesh/unittests/*.cpp) 
FIGURES := $(wildcard figures/*.eps figures/chap01_nonlinear_behavior/*.eps) $(wildcard *.eps)
STYLE := $(wildcard style/*.tex)

nalu_tpetra_doc: nalu_tpetra_doc.pdf 


nalu_tpetra_doc.pdf: $(LATEXSRC) $(FIGURES) $(UTILSRC) $(IOSRC) $(MESHSRC) $(STYLE) Makefile
	pdflatex nalu_tpetra_doc
	pdflatex nalu_tpetra_doc
	makeindex nalu_tpetra_doc
	pdflatex nalu_tpetra_doc

# make multi-part html doc
#nalu_tpetra_doc.html: nalu_tpetra_doc.dvi
#	rm -rf nalu_tpetra_doc_html
#	cp dot.latex2html-init .latex2html-init
#	mkdir nalu_tpetra_doc_html
#	latex2html -dir nalu_tpetra_doc_html -html_version 4.0,unicode nalu_tpetra_doc
#	/bin/rm -f .latex2html-init

clean:
	rm -f *.aux *.tmp *.blg *.bbl release_notes.dvi
	rm -f nalu_tpetra_doc.log nalu_tpetra_doc_release_notes.log
	rm -f nalu_tpetra_doc.dvi nalu_tpetra_doc_release_notes.dvi
	rm -f nalu_tpetra_doc.ps  nalu_tpetra_doc_release_notes.ps
	rm -f nalu_tpetra_doc.idx nalu_tpetra_doc_release_notes.idx
	rm -f nalu_tpetra_doc.ilg nalu_tpetra_doc_release_notes.ilg
	rm -f nalu_tpetra_doc.ind nalu_tpetra_doc_release_notes.ind
	rm -f nalu_tpetra_doc.lof nalu_tpetra_doc_release_notes.lof
	rm -f nalu_tpetra_doc.lot nalu_tpetra_doc_release_notes.lot
	rm -f nalu_tpetra_doc.out nalu_tpetra_doc_release_notes.out
	rm -f nalu_tpetra_doc.toc nalu_tpetra_doc_release_notes.toc
	rm -f nalu_tpetra_doc.lol nalu_tpetra_doc_release_notes.lol
	rm -f nalu_tpetra_doc.pdf

cleanall: clean
	rm -rf nalu_tpetra_doc_html nalu_tpetra_doc.pdf nalu_tpetra_doc_release_notes.pdf

spell:
	./spell_check.sh

shortcaptions: $(LATEXSRC)
	./take_lstnames_out_of_captions.py *.tex
