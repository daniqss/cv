langs := "en gl es"

default: build

compile lang="en":
  #!/usr/bin/env bash
  set -euo pipefail

  mkdir -p build
  typst compile --input lang={{ lang }} src/cv.typ build/cv-{{ lang }}.pdf

  # typst html export prints a lot of warnings, so we capture the output and print it only if the command fails
  if ! out=$(typst compile --features html --input format=html --input lang={{ lang }} src/cv.typ build/cv-{{ lang }}.html 2>&1); then
    printf '%s\n' "$out" >&2
    exit 1
  fi
  
build:
  mkdir -p build
  for lang in {{ langs }}; do {{ just_executable() }} compile "$lang"; done
  cp static/* build/

dev: build
  python3 -m http.server --directory build

fmt:
  typstyle --inplace src/cv.typ src/template.typ src/i18n/*.typ

clean:
  rm -rf build
