{
  fetchFromGitHub,
  stdenvNoCC,
}:

stdenvNoCC.mkDerivation rec {
  name = "scopebuddy";
  version = "1.1.1";

  src = fetchFromGitHub {
    owner = "HikariKnight";
    repo = "ScopeBuddy";
    rev = version;
    hash = "sha256-wO6RFGhGywVFvOAVNyl8rdQsgubsiwmgLJdOReWrj/c=";
  };

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    install -Dm755 bin/$name $out/bin/$name
    runHook postInstall
  '';
}
