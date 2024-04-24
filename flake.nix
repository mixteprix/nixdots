{
  description = "initial flake";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      config1 = lib.nixosSystem {
      	system = "x86_64-linux";
	modules = [ ./configuration.nix ];
      };
    };
  };

}
