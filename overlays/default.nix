{ config, lib, ... }:

let
  cfg = config.nerivations.overlays;
in
{
  nixpkgs.overlays = lib.mkIf cfg.enable [
    (import ./walker.nix) # Until version 0.8.10 is in nixpkgs
  ];
}
