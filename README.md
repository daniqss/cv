# cv as code, using typst

My cv written in [Typst](https://typst.app/) and deployed to GitHub Pages.
It is available in english, galician and spanish.


## develop
```sh
# defaults to english
just compile
just compile gl
just compile es --features html --input format=html

just clean
```

## deploy
The generated pdf and html files are builded and deployed using [a github action](./.github/workflows/deploy.yml).
To build it locally, use:

```sh
nix build .
```
