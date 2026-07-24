compile lang="en":
    typst compile --input lang={{lang}} src/cv.typ build/cv-{{lang}}.pdf

clean:
    rm -rf build/* result/*