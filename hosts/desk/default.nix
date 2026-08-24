{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ../../modules/graphics.nix
    ../../modules/openrgb.nix
    ./wallpapers-desk.nix
    ../../home/obs.nix
  ];
  networking.hostName = "desk";
}
