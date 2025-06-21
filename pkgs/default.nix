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
        hyprfreeze = c ./hyprfreeze.nix;
        hyproled = c ./hyproled.nix;
        scopebuddy = c ./scopebuddy.nix;
      }
    )
  ];
}
