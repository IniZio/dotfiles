{
  lib,
  config,
  inputs,
  pkgs,
  ...
}: {
  home.username = "newman";
  home.homeDirectory = "/Users/newman";

  home.stateVersion = "25.05";

  nixpkgs.config.allowUnfree = true;
  # Allow ghostty, which is marked as broken on macOS.
  nixpkgs.config.allowBroken = true;

  home.packages = with pkgs; [
    nixd
    chezmoi
    jq
    fzf
    go-task
    htop
    gnumake
    git
    fish
    oh-my-fish
    gnupg
    blackbox
    direnv
    ps
    github-cli
    google-cloud-sdk
    dua
    ripgrep
    bun
  ];

  # macOS-specific configuration
  targets.darwin.defaults = {
    # Example: configure dock preferences
    "com.apple.dock" = {
      autohide = true;
      orientation = "bottom";
      tilesize = 48;
    };
    # Example: configure finder preferences
    "com.apple.finder" = {
      ShowPathbar = true;
      ShowStatusBar = true;
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
