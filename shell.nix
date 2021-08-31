let
  sources = import ./nix/sources.nix {};
  nixpkgs = sources.nixpkgs;
  pkgs = import nixpkgs {};

  fhs = pkgs.callPackage ./nix/fhs.nix {};
in
pkgs.mkShell {
  nativeBuildInputs = [ pkgs.niv fhs ];
}
