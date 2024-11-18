{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "kamil";
  home.homeDirectory = "/home/kamil";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.k9s
    pkgs.kubectl
    pkgs.docker
    pkgs.kubectx

    pkgs.tenv
    pkgs.awscli2
    pkgs.neovim
    pkgs.eza

    pkgs.go
    pkgs.python3
    pkgs.nodejs_22
    pkgs.rustc
    pkgs.cargo
<<<<<<< Updated upstream
    pkgs.python3
    pkgs.nodejs_22
=======
    pkgs.lua
    pkgs.luarocks
    pkgs.gcc
>>>>>>> Stashed changes
  ];

  home.file = {
    ".zshrc" .source = ./dotfiles/zshrc/.zshrc;
    "/home/kamil/.config/nvim" .source = ./dotfiles/nvim;
  };
  home.sessionVariables = {
    EDITOR = "nvim";
  };
  
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
