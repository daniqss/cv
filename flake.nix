{
  description = "cv as code";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    eachSystem = f:
      nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux"]
      (system: f system (import nixpkgs {inherit system;}));
  in {
    devShells = eachSystem (
      system: pkgs:
        with pkgs; {
          default = mkShell {
            buildInputs = [
              typst
              typstyle
              just
            ];
          };
        }
    );

    packages = eachSystem (
      system: pkgs: let
        languages = ["en" "gl" "es"];
      in
        with pkgs; {
          default = stdenvNoCC.mkDerivation {
            name = "cv";
            src = ./.;
            nativeBuildInputs = [typst];
            buildPhase = ''
              mkdir -p build
              ${
                lib.concatMapStringsSep "\n"
                (lang: "typst compile --input lang=${lang} src/cv.typ build/cv-${lang}.pdf")
                languages
              }
              ${
                lib.concatMapStringsSep "\n"
                (lang: "typst compile --features html --input lang=${lang} --input format=html -f html src/cv.typ build/cv-${lang}.html")
                languages
              }
              cp static/index.html build/index.html
              cp static/cv.css build/cv.css
            '';

            installPhase = "mkdir -p $out && cp build/* $out/";
          };
        }
    );
  };
}
