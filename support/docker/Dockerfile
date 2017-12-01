FROM ubuntu:14.04

ENV TZ=America/Chicago

RUN apt-get update -qq && \
    apt-get install -y -qq --no-install-suggests --no-install-recommends \
      git \
      ca-certificates \
      lmodern \
      pgf \
      texlive-lang-english \
      texlive-latex-base \
      latex-xcolor \
      texlive-xetex \
      texlive-fonts-recommended \
      texlive-fonts-extra \
      texlive-latex-extra \
      texlive-math-extra && \
    apt-get autoclean && apt-get --purge --yes autoremove && \
    rm -rf /var/lib/apt/lists/*

COPY ./support/docker/entrypoint.sh /entrypoint.sh
COPY . /data

WORKDIR /data
VOLUME ["/data"]

ENTRYPOINT ["/entrypoint.sh"]
