#!/bin/bash
set -e

RESUME=/data/resume.tex
OUTPUT_DIR=/data/build

if [ "$1" = 'xelatex' ]; then
  if [ "$2" != '' ]; then
    exec "$@"
  elif [ -f "$RESUME" ]; then
    mkdir -p "$OUTPUT_DIR"
    exec xelatex -output-directory="$OUTPUT_DIR" "$RESUME"
  else
    exec xelatex "-help"
  fi
fi

exec "$@"
