final: super:

let c = p: final.callPackage p { };
in {
  firefox-cascade = c ../pkgs/firefox-cascade.nix;
  firefox-gnome-theme = c ../pkgs/firefox-gnome-theme.nix;
  nvchad = c ../pkgs/nvchad.nix;
  proton-ge = c ../pkgs/proton-ge.nix;
  tpm = c ../pkgs/tpm.nix;
}
