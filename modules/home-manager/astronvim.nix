{
  lib,
  config,
  ...
}: let
  
in {
  home.file.".config/nvim" = {
    source = ./astronvim;
    recursive = true;
  };
}