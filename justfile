compile lang="en" *flags:
  typst compile {{ flags }} --input lang={{lang}} src/cv.typ build/cv-{{lang}}.{{ if flags =~ "html" { "html" } else { "pdf" } }}

clean:
  rm -rf build/*
