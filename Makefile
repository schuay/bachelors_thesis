PROJECT = thesis

#------------------------------------------------------------------------------
protocol:
#------------------------------------------------------------------------------
	latex $(PROJECT)
	bibtex $(PROJECT)
	latex $(PROJECT)
	dvips -o $(PROJECT).ps $(PROJECT).dvi
	ps2pdf $(PROJECT).ps $(PROJECT).pdf


#------------------------------------------------------------------------------
clean:
#------------------------------------------------------------------------------
	rm -f *.aux $(PROJECT).bbl $(PROJECT).blg $(PROJECT).log $(PROJECT).dvi \
		$(PROJECT).toc $(PROJECT).pdf $(PROJECT).ps $(PROJECT).out

