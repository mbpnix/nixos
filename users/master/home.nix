{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "master";
  home.homeDirectory = "/home/master";

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 60;
    enableSshSupport = true;
  };

  programs.neovim = {
    enable = true;
    vimAlias = true;
    extraConfig = "colorscheme gruvbox";
    plugins = [
      pkgs.vimPlugins.vim-nix
      pkgs.vimPlugins.gruvbox
    ];
  };

  home.packages = with pkgs; [
    tree
    htop
    bat
    lsd
    exa
    ripgrep
    gnupg
    git
    git-crypt
    youtube-dl
    nano
    vim
    xclip
    neofetch
    arc-icon-theme
    arc-theme
    numix-cursor-theme
    numix-gtk-theme
    numix-icon-theme-circle
    numix-icon-theme
    numix-solarized-gtk-theme
    flat-remix-icon-theme
    jetbrains-mono
    fantasque-sans-mono
    mononoki
    lxappearance
    pass
    qrencode
    vscodium
    fzf
    pavucontrol
    vlc
    iosevka
    emacs
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
}
