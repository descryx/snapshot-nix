{ pkgs, ... }:
{
  boot = {
    loader = {
      systemd-boot.enable = true;
      systemd-boot.configurationLimit = 10;
      efi.canTouchEfiVariables = true;
      timeout = 5;
    };
    kernel.sysctl."kernel.perf_event_paranoid" = 0;
    kernelPackages = pkgs.linuxPackages_zen;
    kernelModules = [ "nct6775" ];

    kernelParams = [
      "quiet"
      "nvidia_drm.fbdev=1"
    ];

    plymouth = {
      enable = true;
      theme = "mac-style";
      themePackages = [ pkgs.mac-style-plymouth ];
    };
  };
  zramSwap.enable = true;
}
