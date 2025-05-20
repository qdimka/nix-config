
{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.features.desktop.hyprland;
in {
  options.features.desktop.hyprland.enable = mkEnableOption "hyprland config";

  config = mkIf cfg.enable {
    imports = [
      ./animations.nix
      ./decoration.nix
      ./env.nix
      ./exec-once.nix
      ./general.nix
      ./input.nix
      ./keymaps.nix
      ./misc.nix
      ./monitor.nix
      ./rules.nix
    ];

    wayland.windowManager.hyprland = {
      enable = true;
      xwayland.enable = true;
    };
  }
}
