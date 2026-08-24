{
  programs = {
    zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;

      history = {
        size = 1000;
        path = "$HOME/.zsh_history";
      };

      initContent = ''
        if [ -n "$IN_NIX_SHELL" ]; then
          PS1='%F{#ff66cc}nix-shell%f %~ > '
        else
          PS1='%~ > '
        fi
                bindkey -v
                bindkey '^?' backward-delete-char
                export KEYTIMEOUT=1

                function zle-keymap-select-cursor() {
                  case $KEYMAP in
                    vicmd) print -n "\e[2 q" ;;
                    main|viins) print -n "\e[6 q" ;;
                  esac
                }

                function zle-line-init-cursor() {
                  print -n "\e[6 q"
                }

                autoload -Uz add-zle-hook-widget
                add-zle-hook-widget zle-keymap-select zle-keymap-select-cursor
                add-zle-hook-widget zle-line-init zle-line-init-cursor
      '';

      localVariables = {
        EDITOR = "nvim";
        VISUAL = "nvim";
        SUDO_EDITOR = "nvim";
      };

      shellAliases = {
        nix-shell = "nix-shell --command zsh";
        ll = "ls -la";
        ls = "ls --color=auto";
        # deven = "~/.config/tmux/devEnviroment/tmuxDevSetup";

        # fetchdefault = "fastfetch --config ~/.config/fastfetch/config.jsonc";
        # fetchmini = "fastfetch --config ~/.config/fastfetch/config1.jsonc";
        fetchmain = "fastfetch --config ~/.config/fastfetch/config-main.jsonc";
        fetchnix = "fastfetch --config ~/.config/fastfetch/config-nix.jsonc";
        fetchnixred = "fastfetch --config ~/.config/fastfetch/config-nix-red.jsonc";
        fetchnixblue = "fastfetch --config ~/.config/fastfetch/config-nix-blue.jsonc";
        fetchred = "fastfetch --config ~/.config/fastfetch/config-red.jsonc";
        fetchmin = "fastfetch --config ~/.config/fastfetch/config-mini.jsonc";
        fetchman = "fastfetch --config ~/.config/fastfetch/config-mini-man.jsonc";
      };
    };
  };
}
