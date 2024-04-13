{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "cliphist-rofi-img";
  version = "0.5.0";

  src = fetchFromGitHub {
    owner = "sentriz";
    repo = "cliphist";
    rev = "v${version}";
    hash = "sha256-U78G7X9x3GQg3qcBINni8jWa0wSXQu+TjYChuRPPcLE=";
  };

  installPhase = ''
    runHook preInstall

    # Install files
    mkdir -p $out/bin
    install -Dm755 contrib/cliphist-rofi-img $out/bin/cliphist-rofi-img

    runHook postInstall
  '';
}
