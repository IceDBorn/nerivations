final: super: {
  rpcs3 = super.rpcs3.overrideAttrs (finalAttrs: superAttrs: {
    src = super.fetchFromGitHub {
      owner = "rpcs3";
      repo = "rpcs3";
      rev = "d71f4b33d75c70594449dbb3cdfc69506512c842";
      hash = "sha256-Vz7ibmSYGcCIM6xX2DsULSH7fI/JbI+T0ickLteCNLg=";
      fetchSubmodules = true;
    };

    version = "0.0.30-16100";
  });
}
