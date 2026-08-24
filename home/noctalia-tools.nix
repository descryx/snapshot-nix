{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Region selection & capture
    slurp
    grim

    # Color picker
    hyprpicker

    # OCR
    tesseract

    # Image processing // already present
    # imagemagick

    # QR / barcode
    zbar

    # Uploads
    curl
    jq

    # Recording / GIF
    ffmpeg

    # Utilities
    bc
    # coreutils and procps are usually already present
    xdg-utils

    # Recording backends
    wl-screenrec
    wf-recorder

    # Annotation
    satty
    swappy
    gimp

    # OCR translation
    translate-shell

  ];
}
