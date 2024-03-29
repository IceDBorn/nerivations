{ config, lib, ... }:

let cfg = config.nerivations.overlays;
in {
  nixpkgs.overlays = lib.mkIf cfg.enable [
    (import ./rpcs3.nix) # https://nixpk.gs/pr-tracker.html?pr=299971
  ];
}
