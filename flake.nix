{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = { self, flake-parts, systems, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import systems;
      perSystem = { pkgs, ... }: {
        packages.nodejs-library = pkgs.callPackage ./nodejs.nix { };
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [ nodejs ];
        };
      };
    };
}
