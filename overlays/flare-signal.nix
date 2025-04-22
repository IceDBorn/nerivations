final: super: {
  flare-signal = super.flare-signal.overrideAttrs (
    finalAttrs: superAttrs: {
      pname = "flare";
      version = "0.16.0";

      src = final.fetchFromGitLab {
        domain = "gitlab.com";
        owner = "schmiddi-on-mobile";
        repo = "flare";
        rev = finalAttrs.version;
        hash = "sha256-SasvP3P/QAPqcrJ4L2EO9XlrekGJXv3RjQjj+3VUGxM=";
      };

      cargoDeps = final.rustPlatform.fetchCargoVendor {
        inherit (finalAttrs) pname version src;
        hash = "sha256-l+ADDPOOfWyVxDdZrMxVWRS0wI69lP+hjAm5PFdCGsM=";
      };
    }
  );
}
