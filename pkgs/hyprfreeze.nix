{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "hyprfreeze";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "zerodya";
    repo = "hyprfreeze";
    rev = "v${version}";
    hash = "sha256-u8/q69EDjqlSVZv34l0msEmR3TZBmEZTa8YyBt7X/nw=";
  };

  installPhase = ''
    runHook preInstall

    # Install files
    mkdir -p $out/bin
    install -Dm755 hyprfreeze $out/bin/hyprfreeze

    runHook postInstall
  '';
}
