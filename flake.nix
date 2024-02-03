{
  description = "A flake providing packages missing from upstream";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" ];
      eachSupportedSystem = f:
        nixpkgs.lib.genAttrs supportedSystems (system:
          let
            pkgs = import nixpkgs {
              inherit system;
              config.allowUnfree = true;
              overlays = [ self.overlays.default ];
            };
          in f pkgs);
    in {
      legacyPackages = eachSupportedSystem (pkgs: pkgs);

      nixosModules = { default = ./modules; };
    };
}
