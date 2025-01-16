{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "hyprfreeze";
  version = "1.1.1";

  src = fetchFromGitHub {
    owner = "zerodya";
    repo = "hyprfreeze";
    rev = "${version}";
    hash = "sha256-GPzsE/dXLu2l/lowMHN0l/mGxYM/Q9clXTVoP+wXDwk=";
  };

  installPhase = ''
    runHook preInstall

    # Install files
    mkdir -p $out/bin
    install -Dm755 hyprfreeze $out/bin/hyprfreeze

    runHook postInstall
  '';
}
