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
    pkgs.jq
    pkgs.argocd

    pkgs.go
    pkgs.python3
    pkgs.nodejs_22
    pkgs.rustc
    pkgs.rust-analyzer
    pkgs.cargo
    pkgs.lua
    pkgs.luarocks
    pkgs.gcc
  ];

  home.file = {
    ".zshrc" .source = ./dotfiles/zshrc/.zshrc;
    "/home/kamil/.config/nvim" .source = ./dotfiles/nvim;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.git = {
    enable = true;
    userName = "cyber-kamil";
    userEmail = "kamil.dev@outlook.com";
  };
  
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
