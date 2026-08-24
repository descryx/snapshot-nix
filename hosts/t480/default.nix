{ pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./wallpapers-t480.nix
  ];

  networking.hostName = "t480";

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      intel-vaapi-driver
      intel-compute-runtime
    ];
  };

  environment.sessionVariables = {
    MOZ_ENABLE_WAYLAND = "1";
    NIXOS_OZONE_WL = "1";
  };
}
