{ config, pkgs, ... }:

{
  services.syncthing = {
    enable = true;
    user = "descryx";
    dataDir = "/home/descryx/.local/state/syncthing";
    configDir = "/home/descryx/.config/syncthing";

    overrideDevices = true;
    overrideFolders = true;

    settings = {
      devices = {
        # This is your other machine's name and ID
        "t480" = {
          id = "";
          # "dynamic": auto-discovery on LAN; relays used for cross-network connections
          addresses = [ "dynamic" ];
        };
      };

      folders = {
        # Syncs your Pictures folder
        "pictures" = {
          path = "/home/descryx/Pictures";
          devices = [ "t480" ]; # Must match the key name in 'devices' above
        };

        # Syncs your Videos folder separately
        "videos" = {
          path = "/home/descryx/Videos";
          devices = [ "t480" ];
        };
      };
    };
  };
}
