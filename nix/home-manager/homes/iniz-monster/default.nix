{
  lib,
  config,
  inputs,
  pkgs,
  ...
}: {
  home.username = "iniz";
  home.homeDirectory = "/home/iniz";

  home.stateVersion = "25.05";

  nixpkgs.config.allowUnfree = true;
  # Allow ghostty, which is marked as broken on macOS.
  nixpkgs.config.allowBroken = true;
  # nix.nixPath = ["nixpkgs=${inputs.nixpkgs}"];

  home.packages = with pkgs; [
    nixd
    chezmoi
    fzf
    go-task
    htop
    gnumake
    git
    fish
    gnupg
    blackbox
    ghostty
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}