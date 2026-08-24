{ pkgs, lib, ... }:
{
  fonts.packages = with pkgs; [
    cascadia-code
    monocraft
  ];
}
