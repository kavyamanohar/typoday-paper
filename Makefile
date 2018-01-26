default: pdf
all: clean pdf html

pdf: clean typodaypaper.pdf

html:
	latex2html -html_version 4.0,latin1,unicode typodaypaper.tex

%.pdf: typodaypaper.tex
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f typodaypaper.pdf typodaypaper.aux typodaypaper.toc typodaypaper.log

