{
  nixpkgs.overlays = [
    (import ./rpcs3.nix) # Use until nixpkgs updates to version 30 or higher
    (import ./cemu.nix) # https://nixpk.gs/pr-tracker.html?pr=289867
  ];
}
