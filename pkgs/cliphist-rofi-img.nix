{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "cliphist-rofi-img";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "sentriz";
    repo = "cliphist";
    rev = "v${version}";
    hash = "sha256-DgWZEyw3QjeyQVQi8dQDC+aRAqlM2z1s1Pt7xvyf45s=";
  };

  installPhase = ''
    runHook preInstall

    # Install files
    mkdir -p $out/bin
    install -Dm755 contrib/cliphist-rofi-img $out/bin/cliphist-rofi-img

    runHook postInstall
  '';
}
