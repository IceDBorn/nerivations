{ config, lib, ... }:

let cfg = config.nerivations.overlays;
in {
  nixpkgs.overlays = lib.mkIf cfg.enable [
    (import ./rpcs3.nix) # Use until nixpkgs updates to version 30 or higher
    (import ./waybar.nix) # https://nixpk.gs/pr-tracker.html?pr=297158
  ];
}
