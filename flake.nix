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
            buildPhase = "typst compile cv.typ cv.pdf";
            installPhase = "mkdir -p $out && cp cv.pdf $out/";
          };
        }
    );
  };
}
