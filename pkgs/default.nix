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
        nvchad = c ./nvchad.nix;
        package-version-server = c ./package-version-server.nix;
        tpm = c ./tpm.nix;
      }
    )
  ];
}
