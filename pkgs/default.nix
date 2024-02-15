{
  nixpkgs.overlays = [
    (final: super:
      let c = p: final.callPackage p { };
      in {
        firefox-cascade = c ../pkgs/firefox-cascade.nix;
        firefox-gnome-theme = c ../pkgs/firefox-gnome-theme.nix;
        hyprfreeze = c ../pkgs/hyprfreeze.nix;
        nvchad = c ../pkgs/nvchad.nix;
        tpm = c ../pkgs/tpm.nix;
        wine-ge = c ../pkgs/wine-ge.nix;
      })
  ];
}
