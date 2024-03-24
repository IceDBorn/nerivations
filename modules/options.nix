{ lib, ... }: {
  options = with lib; {
    nerivations = {
      adwaita-for-steam.extras = mkOption {
        type = types.str;
        default = "-e library/hide_whats_new -e login/hover_qr";
      };

      overlays.enable = mkOption {
        type = types.bool;
        default = true;
      };
    };
  };
}
