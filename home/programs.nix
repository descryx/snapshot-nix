{
  programs = {
    git = {
      enable = true;
      settings.user = {
        name = "";
        email = "";
      };
    };
    direnv = {
      enable = true;
      nix-direnv.enable = true;
      enableZshIntegration = true;
    };

    mpv.enable = true;
  };
}
