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
      system: pkgs:
        with pkgs; {
          default = stdenvNoCC.mkDerivation {
            name = "cv";
            src = ./.;
            nativeBuildInputs = [typst];
            buildPhase =
              lib.concatMapStringsSep "\n"
              (lang: "typst compile --input lang=${lang} src/cv.typ build/cv-${lang}.pdf")
              ["en" "gl" "es"];
            installPhase = "mkdir -p $out && cp build/*.pdf $out/";
          };
        }
    );
  };
}
