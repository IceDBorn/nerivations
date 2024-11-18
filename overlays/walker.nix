final: super: {
  walker = super.walker.overrideAttrs (
    finalAttrs: superAttrs: rec {
      version = "0.8.11";

      src = super.fetchFromGitHub {
        owner = "abenz1267";
        repo = "walker";
        rev = "v${version}";
        hash = "sha256-C0E20D7wgzNjP1pg+kEDZba8MTeAVRz8uz4AC5lqwLk=";
      };

      vendorHash = "sha256-nc/WKBhUxhs1aNUg/GM7vhrKd7FrUdl2uKp7MX2VCdE=";
    }
  );
}
