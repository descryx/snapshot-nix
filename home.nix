{ inputs, ... }:
{
  home = {
    username = "descryx";
    homeDirectory = "/home/descryx";
  };

  imports = [
    ./home/dotfile-links.nix
    ./home/gtk.nix
    ./home/mime-apps.nix
    ./home/noctalia-tools.nix
    ./home/packages.nix
    ./home/programs.nix
    ./home/services.nix
    ./home/vesktop.nix
    ./home/zshAndShell.nix
  ];

  xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
    };
  };

  home.stateVersion = "26.05";
}
