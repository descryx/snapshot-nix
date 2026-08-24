{ pkgs, ... }: {
  services.minecraft-server = {
    enable = false;
    eula = true;
    openFirewall = true; # Opens the port the server is running on (by default 25565 but in this case 43000)
    declarative = true;
    # whitelist = {
    # This is a mapping of Minecraft usernames to to the players' UUIDs
    # username1 = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx";
    # username2 = "yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy";
    # };
    serverProperties = {
      server-port = 43000;
      difficulty = 2;
      gamemode = 1;
      max-players = 5;
      motd = "NixOS Des Minecraft server!";
      white-list = false;
      view-distance = 10;
      simulation-distance = 8;
      allow-cheats = true;
    };
    package = pkgs.minecraftServers.vanilla-26-2;
    jvmOpts = "-Xms2048M
    -Xmx2048M
    -XX:+UseZGC
    -XX:+UseCompactObjectHeaders";
  };
}
