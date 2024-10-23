{ config, lib, ... }:

let
  cfg = config.nerivations.overlays;
in
{
  nixpkgs.overlays = lib.mkIf cfg.enable [
    (self: super: { utillinux = super.util-linux; }) # https://nixpk.gs/pr-tracker.html?pr=349783
  ];
}
