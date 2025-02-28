{ config, lib, ... }:

let
  cfg = config.nerivations.overlays;
in
{
  nixpkgs.overlays = lib.mkIf cfg.enable [
    (import ./flare-signal.nix) # https://nixpk.gs/pr-tracker.html?pr=385599
  ];
}
