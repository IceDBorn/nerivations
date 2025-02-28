final: super: {
  flare-signal = super.flare-signal.overrideAttrs (
    finalAttrs: superAttrs: {
      pname = "flare";
      version = "0.15.12";

      src = final.fetchFromGitLab {
        domain = "gitlab.com";
        owner = "schmiddi-on-mobile";
        repo = "flare";
        rev = finalAttrs.version;
        hash = "sha256-qj34x/e5Nc3wPdFaHFZHQ8uCMHIlxfVNyvlp7eb3tSo=";
      };

      cargoDeps = final.rustPlatform.fetchCargoVendor {
        inherit (finalAttrs) pname version src;
        hash = "sha256-Nri3GOq7aaY3yIVQESMPUck3z8++FnAmIbIdkTe+GXw=";
      };
    }
  );
}
