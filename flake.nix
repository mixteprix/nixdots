{
  description = "initial flake";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
 };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    nixosConfigurations = {
      config1 = lib.nixosSystem {
      	inherit system;
	modules = [ ./configuration.nix ];
      };
    };
    homeConfigurations = {
      notty = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	modules = [ /home/notty/.dotfiles/home.nix ];
      };
    };
  };

}
