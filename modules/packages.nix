{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    git
    curl
    gcc_latest
    llvmPackages_latest.libcxx
    gnumake
    nixd
    nixfmt
    statix
    xwayland-satellite
    parted
    smartmontools
    brightnessctl
    nix-output-monitor
    xdg-utils
  ];

  programs = {
    nix-index.enable = true;
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        stdenv.cc.cc
        zlib
        glibc
      ];

    };
  };
}
