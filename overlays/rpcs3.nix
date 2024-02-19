final: super: {
  rpcs3 = super.rpcs3.overrideAttrs (finalAttrs: superAttrs: {
    src = super.fetchFromGitHub {
      owner = "rpcs3";
      repo = "rpcs3";
      rev = "7abc5f3eadcfc9b3875910efe124942ebac0c4ea";
      hash = "sha256-4fSq7fxjadbIhAceQdKgA+CBM1qptC5ImeaBycYGFL8=";
      fetchSubmodules = true;
    };

    version = "0.0.30-16122";

    buildInputs = superAttrs.buildInputs ++ [ super.qt6.qtwayland ];
  });
}
