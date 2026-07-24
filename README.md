# cv as code, using typst

My cv written in [Typst](https://typst.app/) and deployed to GitHub Pages.
It is available in english, galician and spanish.


## develop
```sh
# defaults to english
just compile
just compile gl
just compile es

just clean
```

## deploy
It gets deployed to GitHub Pages using a GitHub Actions workflow (`.github/workflows/deploy.yml`).
`nix build .` builds the three pdfs. [This `index.html`](static/index.html) detects the browser language and loads the corresponding pdf.
