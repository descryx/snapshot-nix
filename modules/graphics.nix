{ config, ... }:
{
    nixpkgs.config.allowUnfree = true;

    hardware.graphics = {
        enable = true;
        enable32Bit = true;
    };

    hardware.nvidia = {
        modesetting.enable = true;
        powerManagement.enable = false;
        open = true;
        nvidiaSettings = true;
        package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

    services.xserver.videoDrivers = [ "nvidia" ];

    boot.initrd.kernelModules = [
        "nvidia"
        "nvidia_drm"
    ];
}
