compile lang="en":
    typst compile --input lang={{lang}} src/cv.typ build/cv-{{lang}}.pdf

compile-html lang="en":
    typst compile --features html --input lang={{lang}} --input format=html -f html src/cv.typ build/cv-{{lang}}.html

clean:
    rm -rf build/* result/*