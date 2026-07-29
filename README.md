# cv as code, using typst

My cv written in [Typst](https://typst.app/) and deployed to GitHub Pages.
It is available in english, galician and spanish.


## develop
```sh
# defaults to english
just compile
just compile gl
just compile es

just compile-html
just compile-html gl
just compile-html es

just clean
```

## deploy
It gets deployed to GitHub Pages using a GitHub Actions workflow (`.github/workflows/deploy.yml`).
`nix build .` builds, per language, a PDF (`cv-<lang>.pdf`) and an HTML export of the CV
(`cv-<lang>.html`, via Typst's `--features html`, styled by [`static/cv.css`](static/cv.css)).
[`index.html`](static/index.html) detects the browser language, fetches the matching
`cv-<lang>.html` and injects it into the page, with a "Download PDF" link to the matching PDF.
