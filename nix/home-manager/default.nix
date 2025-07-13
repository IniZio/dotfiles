{ lib, inputs, ... }:
{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
  ];

  catppuccin = {
    flavor = "mocha"; # Options: latte, frappe, macchiato, mocha
    accent = "teal"; # Options: rosewater, flamingo, pink, mauve, red, maroon, peach, yellow, green, teal, sky, sapphire, blue, lavender
  };
}
