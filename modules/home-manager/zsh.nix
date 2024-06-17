{
  lib,
  config,
  ...
}: let
  
in {
 programs = {
      zsh = {
          enable = true;
          enableAutosuggestions = true;
          syntaxHighlighting.enable = true;
          oh-my-zsh = {
            enable = true;
            theme = "agnoster";
            plugins = [
              "git"
              "npm"
              "history"
              "node"
              "rust"
              "deno"
            ];
          };
          initExtra = "neofetch";
      };
  };
  home.file.".config/neofetch" = {
    source = ./neofetch;
    recursive = true;
  };
}