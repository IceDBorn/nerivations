{ lib, ... }:

{
  options = with lib; {
    nerivations = {
      overlays.enable = mkOption {
        type = types.bool;
        default = true;
      };
    };
  };
}
