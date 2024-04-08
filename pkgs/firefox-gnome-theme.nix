{ stdenvNoCC, fetchFromGitHub, ... }:

stdenvNoCC.mkDerivation rec {
  name = "firefox-gnome-theme";
  version = "124";

  src = fetchFromGitHub {
    owner = "rafaelmardojai";
    repo = "firefox-gnome-theme";
    rev = "v${version}";
    hash = "sha256-NOfsWKOLifmRLIySbjlJFFLuRT8UVyLeZItuLCjvIno=";
  };

  preferLocalBuild = true;

  installPhase = ''
    mkdir -p $out
    cp -r ./* $out/
  '';
}
