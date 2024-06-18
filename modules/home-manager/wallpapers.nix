{
  lib,
  config,
  ...
}: let
  
in {
  home.file.".wallpapers" = {
    source = ./wallpapers;
    recursive = true;
  };
}