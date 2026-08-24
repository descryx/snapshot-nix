{ ... }: {
  programs.nh = {
    enable = true;
    flake = "/home/descryx/nix-config";
    clean = {
      enable = true;
      extraArgs = "--keep-spec 10";
    };
  };
}
