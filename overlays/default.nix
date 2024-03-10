{ config, lib, ... }:

let cfg = config.nerivations.overlays;
in {
  nixpkgs.overlays = lib.mkIf cfg.enable [
    (import ./bottles.nix) # https://github.com/NixOS/nixpkgs/pull/294841
    (import ./rpcs3.nix) # Use until nixpkgs updates to version 30 or higher
  ];
}
