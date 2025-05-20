{ config, ... }: { 
  imports = [ 
    ./home.nix 
    ../common 
    ../features/cli 
    ../features/desktop
  ]; 

  features = {
    cli = {
      fish.enable = true;
      neofetch.enable = true;
    };
    desktop = {
      hyprland.enable = true;
    };
  };

  wayland.windowManager.hyprland = {
    settings = {
      device = [
        {
          name = "keyboard";
          kb_layout = "us";
        }
        {
          name = "mouse";
          sensitivity = -0.5;
        }
      ];
      monitor = [
        "DP-1,3440x1440@144,0x0,1"
      ];
      workspace = [
        "1, monitor:DP-1, default:true"
        "2, monitor:DP-1"
        "3, monitor:DP-1"
        "4, monitor:DP-1"
      ];
    };
  };
}
