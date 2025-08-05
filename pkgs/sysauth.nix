let
  _commit = "cbe61bded419b06caa9d251528574d48dfaa261e";
  _sha256 = "Jj7neO1RKhvinOp9TYAT+Vz4d76GJaB9LTWvuEuqJBw=";
  _bgColor = "@theme_bg_color";
  _bgTransparency = 1.0;
in
{
  commit ? _commit,
  sha256 ? _sha256,
  bgColor ? _bgColor,
  bgTransparency ? _bgTransparency,

  stdenv,
  fetchFromGitHub,

  pkg-config,
  wrapGAppsHook4,

  gtk4-layer-shell,
  gtkmm4,
  polkit,

  ...
}:
stdenv.mkDerivation rec {
  pname = "sysauth";
  version = "0.0.0-${commit}";

  src = fetchFromGitHub {
    owner = "System64fumo";
    repo = pname;
    rev = commit;
    inherit sha256;
  };

  _style = builtins.toFile "sysauth-styles.css" ''
    #sysauth {
      background: rgba(0, 0, 0, 0.5);
    }

    #sysauth .box_layout {
      background: alpha(${bgColor}, ${toString bgTransparency});
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.5);
    }
  '';

  nativeBuildInputs = [
    pkg-config
    wrapGAppsHook4
  ];

  buildInputs = [
    gtk4-layer-shell
    gtkmm4
    polkit
  ];

  hardeningDisable = [ "format" ];
  makeFlags = [ "PREFIX=$(out)" ];

  preBuild = ''
    find ./src -type f | xargs -I {} sed -i "s|/usr/local|$out|g" {}
    find ./src -type f | xargs -I {} sed -i "s|/usr|$out|g" {}
    sed -i "s|libsysauth.so|$out/lib/libsysauth.so|g" ./src/main.cpp
    cp ${_style} ./style.css
  '';
}
