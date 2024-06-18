{
    pkgs,
    lib,
  ...
}: let
  
in {
    wayland.windowManager.hyprland = {
        enable = true;
        settings = {
            "$terminal" = foot
        };
    };
}