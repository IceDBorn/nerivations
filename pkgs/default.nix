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
        faugus-launcher = c ./faugus-launcher.nix; # https://nixpk.gs/pr-tracker.html?pr=402220
        hyproled = c ./hyproled.nix;
      }
    )
  ];
}
