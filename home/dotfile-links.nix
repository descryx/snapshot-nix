{ config, ... }:
let
  link =
    path:
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix-config/dotfiles/${path}";
in
{
  home.file = {
    ".config/niri".source = link ".config/niri";
    ".config/yazi".source = link ".config/yazi";
    ".config/btop".source = link ".config/btop";
    ".config/cava".source = link ".config/cava";
    ".config/easyeffects".source = link ".config/easyeffects";
    ".config/fastfetch".source = link ".config/fastfetch";
    ".config/ghostty".source = link ".config/ghostty";
    ".config/noctalia".source = link ".config/noctalia";
    ".config/nvim".source = link ".config/nvim";
    ".config/tmux".source = link ".config/tmux";
    ".config/clangd".source = link ".config/clangd";
    ".config/wayscriber".source = link ".config/wayscriber";
    ".config/millennium".source = link ".config/millennium";
    ".config/vesktop/themes".source = link ".config/vesktop/themes";
  };
}
