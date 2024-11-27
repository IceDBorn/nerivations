final: super: {
  walker = super.walker.overrideAttrs (
    finalAttrs: superAttrs: rec {
      version = "0.10.1";

      src = super.fetchFromGitHub {
        owner = "abenz1267";
        repo = "walker";
        rev = "v${version}";
        hash = "sha256-0knpNVmMhgeu99gZmMtfQFsrrsGNSMBWUFo3inCIOms=";
      };

      vendorHash = "sha256-nc/WKBhUxhs1aNUg/GM7vhrKd7FrUdl2uKp7MX2VCdE=";
    }
  );
}
