{pkgs, ...}: {
  imports = [
    ./hyprland
    ./kitty
    ./waybar
    ./bat.nix
    ./cava.nix
    ./clock-rs.nix
    ./dunst.nix
    ./eza.nix
    ./firefox.nix
    ./rofi.nix
    ./udiskie.nix
    ./xdg.nix
  ];

  home.packages = with pkgs; [
    
  ];
}