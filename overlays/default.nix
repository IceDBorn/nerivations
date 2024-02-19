{
  nixpkgs.overlays = [
    (import ./rpcs3.nix) # Needed for RPCN to work
    (import ./cemu.nix) # https://nixpk.gs/pr-tracker.html?pr=289867
  ];
}
