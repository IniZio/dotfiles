{
  lib,
  config,
  inputs,
  pkgs,
  ...
}: {
  home.username = "newman";
  home.homeDirectory = "/home/newman";

  home.stateVersion = "25.05";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    nixd
    chezmoi
    jq
    fzf
    htop
    git
    fish
    gnupg
    blackbox
    mise
    distrobox
    ansible
  ];

  programs.home-manager.enable = true;
}
