{ config, lib, ... }:

let
  cfg = config.nerivations.overlays;
in
{
  nixpkgs.overlays = lib.mkIf cfg.enable [
    (import ./walker.nix) # https://nixpk.gs/pr-tracker.html?pr=355093
  ];
}
