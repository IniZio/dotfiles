{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    # For searching Nix packages faster
    nix-search.url = "github:diamondburned/nix-search";

    # flake framework, treats inputs as modules
    flake-parts.url = "github:hercules-ci/flake-parts";

    # Mange home configurations
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Catppuccin theme
    catppuccin.url = "github:catppuccin/nix";
  };

  outputs =
    {
      self,
      nixpkgs,
      nix-search,
      flake-parts,
      home-manager,
      catppuccin,
    } @ inputs:
     let
      mkPkgsWithSystem =
        system:
        import inputs.nixpkgs {
          inherit system;
        };

      # For creating home-manager configuration
      mkHome = { identifier, system ? "x86_64-linux" }:
        home-manager.lib.homeManagerConfiguration {
          pkgs = mkPkgsWithSystem system;
          modules = [
            # Shared home-manager configuration
            ./home-manager/default.nix
            # User-specific configuration
            ./home-manager/homes/${identifier}
          ];
          extraSpecialArgs = {
            inherit inputs;
          };
        };
    in
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-darwin"
      ];

      perSystem =
        {
          system,
          inputs',
          self',
          pkgs,
          ...
        }:
        {
          # `nix fmt` to format code
          formatter = pkgs.nixfmt-rfc-style;
        };

      flake = {
        homeConfigurations = {
          "iniz@monster" = mkHome {
            identifier = "iniz-monster";
            system = "x86_64-linux";
          };
          "newman@oursky" = mkHome {
            identifier = "newman-oursky";
            system = "aarch64-darwin";
          };
        };
      };
    };
}
