final: super: {
  rpcs3 = super.rpcs3.overrideAttrs (finalAttrs: superAttrs: {
    src = super.fetchFromGitHub {
      owner = "rpcs3";
      repo = "rpcs3";
      rev = "4ecf8ecd06c15f0557e1d9243f31e4c2d7baebe2";
      hash = "sha256-y7XLYo1qYYiNE4TXVxfUTCmyGkthpj3IU1gdKTgb8KY=";
      fetchSubmodules = true;
    };

    version = "0.0.31-16271";
  });
}
