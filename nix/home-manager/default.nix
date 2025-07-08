# Main home-manager configuration
{ lib, inputs, ... }:
{
  # Explicitly specify what home-manager should manage
  # This prevents it from trying to manage everything in your home directory
  home.file = lib.mkForce {};
  home.activation = lib.mkForce {};

  imports = [
    inputs.catppuccin.homeModules.catppuccin
  ];

  colorScheme = {
    enable = true;
    flavor = "mocha"; # Options: latte, frappe, macchiato, mocha
    accent = "blue"; # Options: rosewater, flamingo, pink, mauve, red, maroon, peach, yellow, green, teal, sky, sapphire, blue, lavender
  };
}
