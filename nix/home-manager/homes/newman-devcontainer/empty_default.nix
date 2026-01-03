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
    gnumake
    git
    fish
    gnupg
    blackbox
    mise
    opencode
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
