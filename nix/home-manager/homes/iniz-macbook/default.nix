{
  lib,
  config,
  inputs,
  pkgs,
  ...
}: {
  home.username = "iniz";
  home.homeDirectory = "/Users/iniz";

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
    gnupg
    blackbox
    ghostty
    code-server
    # macOS-specific packages
    mas # Mac App Store CLI
    # Remove or conditionally include Linux-specific packages if any
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
