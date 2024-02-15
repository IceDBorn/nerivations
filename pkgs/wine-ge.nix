{ stdenvNoCC }:

stdenvNoCC.mkDerivation rec {
  name = "wine-ge";
  version = "8-26";

  src = builtins.fetchTarball {
    url =
      "https://github.com/GloriousEggroll/wine-ge-custom/releases/download/GE-Proton${version}/wine-lutris-GE-Proton${version}-x86_64.tar.xz";
    sha256 = "020fb93kcd4lhs1982x5rm2d386cxr9dwg1v4nbbld7dksmscnm9";
  };

  preferLocalBuild = true;

  installPhase = ''
    mkdir -p "$out/bin"
    echo "GE-Wine${version}" > "$out/bin/version"
    cp -r ./ "$out/bin"
  '';
}
