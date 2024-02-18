{ lib, ... }: {
  options = with lib; {
    nerivations.arkenfox-userjs.userjs = mkOption { type = types.str; };
  };
}
