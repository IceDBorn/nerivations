{
  fetchFromGitHub,
  gamemode,
  gobject-introspection,
  icoextract,
  imagemagick,
  lib,
  libayatana-appindicator,
  libcanberra-gtk3,
  meson,
  ninja,
  python3Packages,
  umu-launcher,
  wrapGAppsHook3,
  xdg-utils,
}:

python3Packages.buildPythonApplication rec {
  pname = "faugus-launcher";
  version = "git-911a7f18e42bea496d005cfa9cfca12a34dbfc8a";
  pyproject = false;

  src = fetchFromGitHub {
    owner = "Faugus";
    repo = "faugus-launcher";
    rev = "911a7f18e42bea496d005cfa9cfca12a34dbfc8a";
    hash = "sha256-J7s1WoNgp4hWuNR28e6yG3ZijLrjlEeLJ8RtKeS+jcY=";
  };

  nativeBuildInputs = [
    gobject-introspection
    wrapGAppsHook3
  ];

  buildInputs = [
    libayatana-appindicator
  ];

  build-system = [
    meson
    ninja
  ];

  dependencies = with python3Packages; [
    filelock
    pillow
    psutil
    pygobject3
    requests
    vdf
  ];

  postPatch = ''
    substituteInPlace faugus_launcher.py \
      --replace-fail "PathManager.find_binary('faugus-run')" "'$out/bin/.faugus-run-wrapped'" \
      --replace-fail "PathManager.find_binary('faugus-proton-manager')" "'$out/bin/.faugus-proton-manager-wrapped'" \
      --replace-fail 'Exec={faugus_run}' 'Exec=faugus-run'

    substituteInPlace faugus_run.py \
      --replace-fail "PathManager.find_binary('faugus-components')" "'$out/bin/.faugus-components-wrapped'" \
      --replace-fail "PathManager.find_library('libgamemode.so.0')" "'${lib.getLib gamemode}/lib/libgamemode.so.0'" \
      --replace-fail "PathManager.find_library('libgamemodeauto.so.0')" "'${lib.getLib gamemode}/lib/libgamemodeauto.so.0'"
  '';

  dontWrapGApps = true;

  preFixup = ''
    makeWrapperArgs+=(
      "''${gappsWrapperArgs[@]}"
      --suffix PATH : "${
        lib.makeBinPath [
          icoextract
          imagemagick
          libcanberra-gtk3
          umu-launcher
          xdg-utils
        ]
      }"
    )
  '';
}
