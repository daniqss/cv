# How to use

## develop
```sh
typst watch cv.typ
```

## format
```sh
typstyle --inplace .
```

## build
```sh
typst compile cv.typ cv.pdf

# or using nix
nix build .
```