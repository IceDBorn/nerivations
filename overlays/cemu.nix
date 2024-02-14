final: super: {
  cemu = super.cemu.overrideAttrs (finalAttrs: superAttrs: {
    patches = superAttrs.patches ++ [
      (super.fetchpatch {
        url =
          "https://github.com/cemu-project/Cemu/commit/72aacbdcecc064ea7c3b158c433e4803496ac296.patch";
        hash = "sha256-x+ZVqXgGRSv0VYwJAX35C1p7PnmCHS7iEO+4k8j0/ug=";
      })
    ];
  });
}
