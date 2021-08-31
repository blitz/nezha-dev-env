{ buildFHSUserEnv, runScript ? "bash" }:
buildFHSUserEnv {
  name = "fhs";
  targetPkgs = pkgs: with pkgs; [
    curl
    git
    gnumake

    pkgsCross.riscv64.gcc
    pkgsCross.riscv64.binutils
  ];

  inherit runScript;

  profile = ''
    export LANG=C.UTF-8
  '';
}
