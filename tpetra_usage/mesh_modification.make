all: STKManual_MeshModOnly

dvi: STKManual_MeshModOnly.dvi

pdf: STKManual_MeshModOnly.pdf

html: STKManual_MeshModOnly_html

LATEXSRC := $(wildcard *.tex) $(wildcard *.sty)
FIGURES := $(wildcard figures/*.eps figures/chap01_nonlinear_behavior/*.eps) $(wildcard *.eps)

STKManual_MeshModOnly: STKManual_MeshModOnly.pdf 




STKManual_MeshModOnly.pdf: $(LATEXSRC) $(FIGURES) Makefile
	pdflatex STKManual_MeshModOnly
	pdflatex STKManual_MeshModOnly

# make multi-part html doc
#STKManual_MeshModOnly.html: STKManual_MeshModOnly.dvi
#	rm -rf STKManual_MeshModOnly_html
#	cp dot.latex2html-init .latex2html-init
#	mkdir STKManual_MeshModOnly_html
#	latex2html -dir STKManual_MeshModOnly_html -html_version 4.0,unicode STKManual_MeshModOnly
#	/bin/rm -f .latex2html-init

clean:
	rm -f *.aux *.tmp *.blg *.bbl release_notes.dvi
	rm -f STKManual_MeshModOnly.log STKManual_MeshModOnly_release_notes.log
	rm -f STKManual_MeshModOnly.dvi STKManual_MeshModOnly_release_notes.dvi
	rm -f STKManual_MeshModOnly.ps  STKManual_MeshModOnly_release_notes.ps
	rm -f STKManual_MeshModOnly.idx STKManual_MeshModOnly_release_notes.idx
	rm -f STKManual_MeshModOnly.ilg STKManual_MeshModOnly_release_notes.ilg
	rm -f STKManual_MeshModOnly.ind STKManual_MeshModOnly_release_notes.ind
	rm -f STKManual_MeshModOnly.lof STKManual_MeshModOnly_release_notes.lof
	rm -f STKManual_MeshModOnly.lot STKManual_MeshModOnly_release_notes.lot
	rm -f STKManual_MeshModOnly.out STKManual_MeshModOnly_release_notes.out
	rm -f STKManual_MeshModOnly.toc STKManual_MeshModOnly_release_notes.toc
	rm -f STKManual_MeshModOnly.lol STKManual_MeshModOnly_release_notes.lol
	rm -f STKManual_MeshModOnly.pdf

cleanall: clean
	rm -rf STKManual_MeshModOnly_html STKManual_MeshModOnly.pdf STKManual_MeshModOnly_release_notes.pdf

spell:
	./spell_check.sh
