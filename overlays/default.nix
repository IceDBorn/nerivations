{
  nixpkgs.overlays = [
    (import ./rpcs3.nix) # Needed for RPCN to work
  ];
}
