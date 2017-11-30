FROM ubuntu:16.04

RUN apt-get update -qq && \
    apt-get install -y -qq \
      texlive-latex-base \
      texlive-math-extra \
      texlive-xetex \
      texlive-fonts-recommended && \
    rm -rf /var/lib/apt/lists/*

COPY . /usr/src
RUN mkdir /usr/src/build

CMD xelatex -output-directory=/usr/src/build /usr/src/resume.tex
