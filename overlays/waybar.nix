final: super: {
  waybar = super.waybar.override {
    wireplumber = super.wireplumber.overrideAttrs rec {
      version = "0.4.17";
      src = super.fetchFromGitHub {
        owner = "pipewire";
        repo = "wireplumber";
        rev = version;
        sha256 = "sha256-vhpQT67+849WV1SFthQdUeFnYe/okudTQJoL3y+wXwI=";
      };
    };
  };
}
