{ buildFHSUserEnv, runScript ? "bash" }:
buildFHSUserEnv {
  name = "fhs";
  targetPkgs = pkgs: with pkgs; [
    curl
    git
    gnumake
    zile

    # Everything
    pkgsCross.riscv64.buildPackages.gcc
    pkgsCross.riscv64.buildPackages.binutils

    # U-Boot
    dtc
    (python3.withPackages (p: [
        p.libfdt
        p.setuptools # for pkg_resources
    ]))

    bison
    flex
    swig
    openssl
    openssl.dev
  ];

  inherit runScript;

  profile = ''
    export LANG=C.UTF-8
  '';
}
