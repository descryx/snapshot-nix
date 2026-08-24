{ pkgs, ... }:
{
  users.users.descryx = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    packages = with pkgs; [ tree ];
  };
  programs.zsh.enable = true;

  time.timeZone = "Europe/Berlin";
}
