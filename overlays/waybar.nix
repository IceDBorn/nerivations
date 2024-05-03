final: super: {
  waybar = super.waybar.overrideAttrs (
    finalAttrs: superAttrs: {
      src = super.fetchFromGitHub {
        owner = "Alexays";
        repo = "Waybar";
        rev = "231d6972d7a023e9358ab7deda509baac49006cb";
        hash = "sha256-mCQdrn0Y3oOVZP/CileWAhuBX6aARBNrfxyqJBB4NxA=";
      };

      version = "git";
    }
  );
}
