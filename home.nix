{
  pkgs,
  config,
  ...
}: {
  imports = [
    # ./programs
    #./nvim
    ./services
  ];

  gtk = {
    enable = true;
    theme = {
      package = pkgs.materia-theme;
      name = "Materia";
    };

    iconTheme = {
      package = pkgs.numix-icon-theme-circle;
      name = "Numix-Circle";
    };
  };

  xsession.enable = true;

  services.pasystray.enable = true;

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.nur.repos.ambroisie.vimix-cursors;
    name = "Vimix-white-cursors";
    size = 42;
  };

  programs.home-manager.enable = true;
  # programs.waybar.enable = true;

  home.packages = with pkgs; [
    # aseprite-unfree
    bitwarden
    waybar
    foot
    wl-clipboard

    # calibre
    lapce
    lolcat
    tree
    element-desktop
    qbittorrent
    # kotatogram-desktop
    tdesktop

    # firefox
    firefox-wayland

    # Game
    polymc

    # factorio
    tetrio-desktop

    # Music & Video
    spotify
    spotify-tui
    spotifyd
    sptlrx
    playerctl
    cava
    vlc
    obs-studio

    # Application
    nur.repos.linyinfeng.icalingua-plus-plus
    nur.repos.linyinfeng.wemeet
    discord
    screenkey
    # vimPlugins.markdown-preview-nvim

    #dev
    julia-bin
    texlive.combined.scheme-medium
  ];
  home.stateVersion = "22.05";
}
