final: super: {
  flare-signal = super.flare-signal.overrideAttrs (
    finalAttrs: superAttrs: {
      pname = "flare";
      version = "0.15.15";

      src = final.fetchFromGitLab {
        domain = "gitlab.com";
        owner = "schmiddi-on-mobile";
        repo = "flare";
        rev = finalAttrs.version;
        hash = "sha256-6U1Hq3ietB8yxq04yvhA350kP8l4t0IbIu+cLl1K7/s=";
      };

      cargoDeps = final.rustPlatform.fetchCargoVendor {
        inherit (finalAttrs) pname version src;
        hash = "sha256-/3POHtEFu33yk+azIZe+D45ilA+03jcgq3hzrIqI4W8=";
      };
    }
  );
}
