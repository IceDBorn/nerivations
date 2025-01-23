{ stdenvNoCC, fetchFromGitHub }:
stdenvNoCC.mkDerivation rec {
  name = "hyproled";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "mklan";
    repo = "hyproled";
    rev = version;
    hash = "sha256-vgMc0+mVpqJqAn8UE/xItZzEF8U/9V+Ogb32z6CNl8s=";
  };

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    install -Dm755 hyproled $out/bin/hyproled
    runHook postInstall
  '';
}
