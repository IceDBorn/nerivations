final: super: {
  cemu = super.cemu.override {
    imgui = super.imgui.overrideAttrs {
      version = "1.90.1";
      src = super.fetchFromGitHub {
        owner = "ocornut";
        repo = "imgui";
        rev = "v1.90.1";
        sha256 = "sha256-gf47uLeNiXQic43buB5ZnMqiotlUfIyAsP+3H7yJuFg=";
      };
    };
  };
}
