{ config, ... }:

let userjs = config.nerivations.arkenfox-userjs.userjs;
in {
  nixpkgs.overlays = [
    (final: super:
      let
        c = p: final.callPackage p { };
        k = p: config.boot.kernelPackages.callPackage p { };
      in {
        arkenfox-userjs =
          final.callPackage ./arkenfox-userjs.nix { inherit userjs; };
        deckbd = c ./deckbd.nix;
        firefox-cascade = c ./firefox-cascade.nix;
        firefox-gnome-theme = c ./firefox-gnome-theme.nix;
        hyprfreeze = c ./hyprfreeze.nix;
        nvchad = c ./nvchad.nix;
        tpm = c ./tpm.nix;
        wine-ge = c ./wine-ge.nix;
        xpadneo-git = k ./xpadneo.nix;
      })
  ];
}
