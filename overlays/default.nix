{ config, lib, ... }:

let
  cfg = config.nerivations.overlays;
in
{
  nixpkgs.overlays = lib.mkIf cfg.enable [
    (import ./tela-icon-theme.nix) # https://github.com/NixOS/nixpkgs/pull/380993
  ];
}
