{ ... }:

{
  nixpkgs.overlays = [
    (
      final: super:
      let
        c = p: final.callPackage p { };
      in
      {
        cliphist-rofi-img = c ./cliphist-rofi-img.nix;
        deckbd = c ./deckbd.nix;
        hyprfreeze = c ./hyprfreeze.nix;
        nvchad = c ./nvchad.nix;
        tpm = c ./tpm.nix;
        wine-ge = c ./wine-ge.nix;
      }
    )
  ];
}
