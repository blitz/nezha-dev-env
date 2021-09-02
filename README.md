# Allwinner D1 Nezha Board Development Environment

![Board](./doc/nezha.webp)

This repository gives you access to an easy to setup chroot
environment that allows compilation of and experimentation with the
system software of the Linux-capable 64-bit RISC-V
[Nezha](https://liliputing.com/2021/05/nezha-is-a-99-single-board-pc-with-a-risc-v-processor.html)
board:

- [OpenSBI](https://github.com/riscv/opensbi),
- [U-Boot](https://www.denx.de/wiki/U-Boot), and
- [Linux](https://www.kernel.org/)

with out the hassle of setting up a RISC-V cross-compilation
environment and keeping it working.

## Relevant Documentation

The
[linux-sunxi](https://linux-sunxi.org/Allwinner_Nezha#Manual_build)
wiki contains detailed instruction on how to find and build OpenSBI,
U-Boot, and Linux for the Nezha board. This description largely
applies.

**Note:** You have to use `CROSS_COMPILE=riscv64-unknown-linux-gnu-`
instead of `CROSS_COMPILE=riscv64-linux-gnu-`.

## Usage

To use the chroot in this repository, you need to [install
Nix](https://nixos.org/download.html).

To be written...
