let
  sources = import ./nix/sources.nix {};
  nixpkgs = sources.nixpkgs;
  pkgs = import nixpkgs {};

  fhs = pkgs.callPackage ./nix/fhs.nix {};
in
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.niv

    # Use 'connect-nezha' to connect to the board.
    (pkgs.writeShellScriptBin "connect-nezha" ''
      echo "Use C-a C-s to send files using XModem."
      exec ${pkgs.picocom}/bin/picocom --send-cmd "${pkgs.lrzsz}/bin/sx -vv" -b 115200 --flow n /dev/ttyUSB0
    '')

    # Use 'fhs' to enter the FHS-compatible build environment.
    fhs
  ];
}
