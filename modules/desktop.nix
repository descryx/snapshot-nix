{
  programs = {
    niri.enable = true;
    xwayland.enable = true;

    steam = {
      enable = true;
      # remotePlay.openFirewall = true;
      # dedicatedServer.openFirewall = true;
    };

    # gamemode: auto-tunes CPU governor & GPU for gaming performance.
    # Use with launch option: gamemoderun %command%
    gamemode.enable = true;
    gamemode.settings.general.renice = 10;
  };
}
