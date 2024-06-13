{
  description = "KDE Nix Shell with kde-builder full configured";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages =  {
          kde-builder = import ./default.nix { inherit pkgs; };
        };

        devShells = {
          default = import ./shell.nix { inherit pkgs; };
        };
      });
}
