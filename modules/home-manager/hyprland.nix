{
    pkgs,
    lib,
  ...
}: let
  
in {
    wayland.windowManager.hyprland = {
        enable = true;
        settings = {
            "exec-once" = [
                "swww init && swww img $HOME/.wallpapers/old.png"
            ];
            "$mainMod" = "SUPER";
            "$term" = "foot";
            debug = {
                disable_logs = false;
            };
            bind = [
                "$mainMod, Return, exec, $term"
                # "$mainMod SHIFT, D, exec, $fullmenu"
            ];
        };
    };

    home.file.".config/neofetch" = {
        source = ./neofetch;
        recursive = true;
    };
}