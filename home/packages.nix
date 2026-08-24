{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    wget
    tree
    neovim
    kitty
    gh
    clang-tools
    stow
    ripgrep
    fd
    nodejs
    python3
    lazygit
    unzip
    cargo
    fzf
    opencode
    wl-clipboard
    imagemagick
    tree-sitter
    wayscriber
    gimp
    firefox
    chromium
    btop
    fastfetch
    cava
    cliphist
    ghostty
    tmux
    yazi
    easyeffects
    mda_lv2
    calf
    lsp-plugins
    zam-plugins
    prismlauncher
    imv
    mpv
    obsidian
    telegram-desktop
    thunar
    vesktop
    gamescope
    gamemode # gamemoderun CLI — enables CPU/GPU auto-tuning for games
    mangohud # in-game performance overlay (mangohud %command%)
    vulkan-tools # vulkaninfo, vkcube — verify Vulkan is working
    hyprpolkitagent
    pavucontrol
    mpvpaper
    wl-mirror
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
