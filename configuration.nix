{ inputs, ... }: {
  imports = [
    ./modules/audio.nix
    ./modules/boot.nix
    ./modules/desktop.nix
    ./modules/fonts.nix
    #graphix = host specific
    ./modules/mc-server.nix
    ./modules/networking.nix
    ./modules/nh.nix
    ./modules/nix-settings.nix
    #openrgb = host specific
    ./modules/packages.nix
    ./modules/power.nix
    ./modules/sddm.nix
    ./modules/users.nix
  ];

  system.stateVersion = "26.05"; # Did you read the comment?
}
