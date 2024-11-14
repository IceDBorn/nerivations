final: super: {
  walker = super.walker.overrideAttrs (
    finalAttrs: superAttrs: rec {
      version = "0.8.10";

      src = super.fetchFromGitHub {
        owner = "abenz1267";
        repo = "walker";
        rev = "v${version}";
        hash = "sha256-HwrZqqmtD65NhNAUtPLml0h9GrbEOiXMzx9HV/5irgE=";
      };

      vendorHash = "sha256-nc/WKBhUxhs1aNUg/GM7vhrKd7FrUdl2uKp7MX2VCdE=";
    }
  );
}
