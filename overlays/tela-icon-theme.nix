final: super: {
  tela-icon-theme = super.tela-icon-theme.overrideAttrs (
    finalAttrs: superAttrs: rec {
      version = "2025-02-10";

      src = super.fetchFromGitHub {
        owner = "vinceliuice";
        repo = "tela-icon-theme";
        rev = version;
        hash = "sha256-ufjKFlKJnmNwD2m1w+7JSBQij6ltxXWCpUEvVxECS98=";
      };
    }
  );
}
