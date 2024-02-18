{ config, ... }:

let
  extras = config.nerivations.adwaita-for-steam.extras;
  userjs = config.nerivations.arkenfox-userjs.userjs;
in {
  nixpkgs.overlays = [
    (final: super:
      let
        c = p: final.callPackage p { };
        k = p: config.boot.kernelPackages.callPackage p { };
      in {
        adwaita-for-steam =
          final.callPackage ./adwaita-for-steam { inherit extras; };
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
