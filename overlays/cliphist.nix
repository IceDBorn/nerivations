final: super: {
  cliphist = super.cliphist.overrideAttrs (
    finalAttrs: superAttrs: rec {
      src = super.fetchFromGitHub {
        owner = "sentriz";
        repo = "cliphist";
        rev = "refs/tags/v${version}";
        hash = "sha256-tImRbWjYCdIY8wVMibc5g5/qYZGwgT9pl4pWvY7BDlI=";
      };

      vendorHash = "sha256-gG8v3JFncadfCEUa7iR6Sw8nifFNTciDaeBszOlGntU=";
      version = "0.6.1";
    }
  );
}
