{ config, ... }:

let
  userjs = config.nerivations.arkenfox-userjs.userjs;
in
{
  nixpkgs.overlays = [
    (
      final: super:
      let
        c = p: final.callPackage p { };
        k = p: config.boot.kernelPackages.callPackage p { };
      in
      {
        arkenfox-userjs = final.callPackage ./arkenfox-userjs.nix { inherit userjs; };
        cliphist-rofi-img = c ./cliphist-rofi-img.nix;
        deckbd = c ./deckbd.nix;
        firefox-gnome-theme = c ./firefox-gnome-theme.nix;
        hyprfreeze = c ./hyprfreeze.nix;
        nvchad = c ./nvchad.nix;
        tpm = c ./tpm.nix;
        wine-ge = c ./wine-ge.nix;
      }
    )
  ];
}
