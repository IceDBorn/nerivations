final: super: {
  rpcs3 = super.rpcs3.overrideAttrs (finalAttrs: superAttrs: {
    src = super.fetchFromGitHub {
      owner = "rpcs3";
      repo = "rpcs3";
      rev = "adc8a360ad45b8462917f404db1b0afa85901a12";
      hash = "sha256-UKilGyyaDeIN6raJHT4p0niwnnvnPaXpBpmWwcpTQ0k=";
      fetchSubmodules = true;
    };

    version = "0.0.31-16181";
  });
}
