default: pdf
all: clean pdf 

pdf: clean typodaypaper.pdf

%.pdf: typodaypaper.tex
	xelatex $<
	bibtex typodaypaper
	xelatex $<	# to include generated ToC
	xelatex $<	# to include generated ToC
clean:
	rm -f typodaypaper.pdf typodaypaper.aux typodaypaper.toc typodaypaper.log *.aux *.bbl

