FROM ubuntu:16.04

RUN apt-get update -qq && \
    apt-get install -y -qq texlive-full texlive-fonts-recommended && \
    rm -rf /var/lib/apt/lists/*

COPY . /usr/src

CMD xelatex -output-directory=build /usr/src/resume.tex
