FROM ubuntu:18.04

RUN apt-get update && apt-get install --yes --no-install-recommends \
	texlive-fonts-recommended \
	texlive-generic-recommended \
	texlive-latex-recommended \ 
	texlive-latex-extra \
	texlive-base \
	texlive-lang-cyrillic
	
COPY resume /resume

CMD [ "bash" ]

RUN cd /resume && pdflatex main.tex
