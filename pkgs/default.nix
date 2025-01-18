{ ... }:

{
  nixpkgs.overlays = [
    (
      final: super:
      let
        c = p: final.callPackage p { };
      in
      {
        deckbd = c ./deckbd.nix;
        tpm = c ./tpm.nix;
      }
    )
  ];
}
