final: super: {
  flare-signal = super.flare-signal.overrideAttrs (
    finalAttrs: superAttrs: {
      pname = "flare";
      version = "0.15.16";

      src = final.fetchFromGitLab {
        domain = "gitlab.com";
        owner = "schmiddi-on-mobile";
        repo = "flare";
        rev = finalAttrs.version;
        hash = "sha256-oG5RHCOk/VPCUAdg/+gfw9/cErnaZBKnwzLzdaboSyY=";
      };

      cargoDeps = final.rustPlatform.fetchCargoVendor {
        inherit (finalAttrs) pname version src;
        hash = "sha256-Id08JgFbeuGrMrBFyXF/ke/LfkqvT+biEgDOyW8sZh0=";
      };
    }
  );
}
