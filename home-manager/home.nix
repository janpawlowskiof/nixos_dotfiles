# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    outputs.homeManagerModules.wallpapers
    outputs.homeManagerModules.zsh
    outputs.homeManagerModules.hyprland
    outputs.homeManagerModules.astronvim

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "juan";
    homeDirectory = "/home/juan";
  };

  programs = {
    home-manager.enable = true;
    neovim.enable = true;
    foot.enable = true;
    lazygit.enable = true;
  };
  home.packages = with pkgs; [ steam ];

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.05";

  stylix = {
    autoEnable = true;
    opacity.terminal = 0.5;
    targets = {
      alacritty.enable = true;

      firefox.enable = true;
      qutebrowser.enable = true;

      foot.enable = true;
      kitty.enable = true;
      lazygit.enable = true;

      gtk.enable = true;
      hyprland.enable = true;
      kde.enable = false;
    };
  };
}
