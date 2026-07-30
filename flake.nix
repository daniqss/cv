{
  description = "cv as code, using typst";

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
              just

              typst
              typstyle

              python3
            ];
          };
        }
    );

    packages = eachSystem (
      system: pkgs:
        with pkgs;
        with pkgs.lib; {
          default = stdenvNoCC.mkDerivation {
            name = "cv";
            src = ./.;
            nativeBuildInputs = [typst];
            buildPhase = let
              combinations = cartesianProduct {
                format = [
                  {
                    extension = "pdf";
                    flags = "";
                  }
                  {
                    extension = "html";
                    flags = "--features html --input format=html";
                  }
                ];
                lang = ["en" "gl" "es"];
              };

              commands = map ({
                format,
                lang,
              }: "typst compile ${format.flags} --input lang=${lang} src/cv.typ build/cv-${lang}.${format.extension}")
              combinations;
            in ''
              mkdir -p build
              ${concatStringsSep "\n" commands}
              cp static/* build/
            '';

            installPhase = "mkdir -p $out && cp build/* $out/";
          };
        }
    );
  };
}
