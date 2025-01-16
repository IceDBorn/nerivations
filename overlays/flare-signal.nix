final: super: {
  flare-signal = super.flare-signal.overrideAttrs (
    finalAttrs: superAttrs: rec {
      version = "0.15.7";

      src = super.fetchFromGitLab {
        domain = "gitlab.com";
        owner = "schmiddi-on-mobile";
        repo = "flare";
        rev = finalAttrs.version;
        hash = "sha256-KFxBdWNN7LYQ5jiDZhAs4pqX2cRLvEGaAhYabaQh1n0=";
      };

      cargoDeps = super.rustPlatform.fetchCargoVendor {
        inherit (finalAttrs) pname version src;
        hash = "sha256-bZL9/0MYGxXefrj9whG+N7iMaBpaZSeBVAWR0AKKEvo=";
      };
    }
  );
}
