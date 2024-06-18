{ pkgs, ... }:

{
  stylix = {
    # enable = true;
    image = pkgs.fetchurl {
      url = "https://www.pixelstalk.net/wp-content/uploads/2016/05/Epic-Anime-Awesome-Wallpapers.jpg";
      sha256 = "enQo3wqhgf0FEPHj2coOCvo7DuZv+x5rL/WIo4qPI50=";
    };
    polarity = "dark";
    autoEnable = true;
  };

  # stylix = {
  #   autoEnable = false;
  #   targets = {
  #     alacritty.enable = true;

  #     firefox.enable = true;
  #     qutebrowser.enable = true;

  #     gtk.enable = true;
  #     hyprland.enable = true;
  #     kde.enable = false;
  #   };
  # };
}
