{ pkgs, ... }:
let
  yamis-icons = pkgs.stdenv.mkDerivation {
    pname = "yet-another-monochrome-icon-set";
    version = "1.4";
    src = pkgs.fetchFromGitHub {
      owner = "googIyEYES";
      repo = "YAMIS";
      rev = "master";
      hash = "sha256-KZXG5XYHhUfgDrxOXT1mS+vbmH9l0uEzfdvOo1+r1TQ=";
    };
    dontBuild = true;
    installPhase = ''
      mkdir -p $out/share/icons/Yet-Another-Monochrome-Icon-Set
      tar -xzvf monochrome-icon-theme.tar.gz -C $out/share/icons/Yet-Another-Monochrome-Icon-Set/ --strip-components=1
    '';
  };
in
{
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Original-Classic";
      size = 16;
      package = pkgs.bibata-cursors;
    };
    gtk3.extraConfig = {
      "gtk-cursor-theme-name" = "Bibata-Original-Classic";
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-cursor-theme-name=Bibata-Original-Classic
      '';
    };
    font = {
      name = "Cascadia Code";
      size = 10;
    };
    theme = {
      name = "adw-gtk3-dark"; # stylix,?
      package = pkgs.adw-gtk3;
    };
    iconTheme = {
      name = "Yet-Another-Monochrome-Icon-Set";
      package = yamis-icons;
    };
  };
  #
  home = {
    file.".icons/default".source = "${pkgs.bibata-cursors}/share/icons/Bibata-Original-Classic";
    pointerCursor = {
      enable = true;
      gtk.enable = true;
      x11.enable = true;
      name = "Bibata-Original-Classic";
      size = 16;
      package = pkgs.bibata-cursors;
    };
  };
}
