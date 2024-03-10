final: super: {
  bottles-unwrapped = super.bottles-unwrapped.overrideAttrs
    (finalAttrs: superAttrs: rec {
      src = super.fetchFromGitHub {
        owner = "bottlesdevs";
        repo = "bottles";
        rev = version;
        hash = "sha256-uS3xmTu+LrVFX93bYcJvYjl6179d3IjpxLKrOXn8Z8Y=";
      };

      version = "51.11";
    });
}
