{
  programs.waybar = {
    enable = true;

    settings.mainBar = {
      layer = "top";

      modules-left = [
        "custom/distro"
        "tray"
      ];

      modules-center = [ "hyprland/workspaces" ];

      modules-right = [
        "clock"
        "pulseaudio"
        "memory"
        "cpu"
        "bluetooth"
        "network"
        "custom/sleep"
        "custom/reboot"
        "custom/shutdown"
      ];

      "custom/distro" = {
        format = "<span font='Hack Nerd Font' size='medium'></span>";
        tooltip = false;
      };

      "hyprland/workspaces" = {
        disable-scroll = false;
        all-outputs = true;
        on-click = "activate";
        format = "<span font='Hack Nerd Font'>{icon}</span>";

        format-icons = {
          default = "<span color='#f5e0dc'></span>";
          active = "<span></span>";
          urgent = "<span>󰗖</span>";
          empty = "<span color='#f5e0dc'></span>";
        };

        persistent-workspaces = {
          "1" = [ ];
          "2" = [ ];
          "3" = [ ];
          "4" = [ ];
          "5" = [ ];
        };
      };

      tray = {
        icon-size = 18;
        spacing = 10;
        tooltip = false;
      };

      clock = {
        format = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#f5e0dc'>󰥔</span>  {:%R}";
        format-alt = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#f5e0dc'>󰥔</span>  {:%A, %d. %b, %Y}";
        tooltip = false;
      };

      pulseaudio = {
        format = "<span font='Hack Nerd Font' size='large' rise='-1500' color='#f5e0dc'></span>  <span rise='-200'>{volume}%</span>";
        tooltip = false;
      };

      memory = {
        interval = 3;
        format = "<span font='Hack Nerd Font' color='#f5e0dc'></span>   <span rise='-200'>{}%</span>";
        tooltip = false;
      };

      cpu = {
        interval = 3;
        format = "<span font='Hack Nerd Font' color='#f5e0dc'></span>  <span rise='-200'>{usage}%</span>";
        tooltip = false;
      };

      bluetooth = {
        format-on = "";
        format-off = "!";
        format-disabled = ""; # an empty format will hide the module
        format-connected = " {num_connections}";
        tooltip-format-connected = "{device_enumerate}";
        tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
      };

      network = {
        format-wifi = "{icon}";
	      format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
        format-ethernet = "󰈀";
        format-linked = "{ifname} 󰈀";
        format-disconnected = "!󰤫";
        tooltip-format = "{ifname} via {gwaddr}";
        on-click = "~/.config/rofi/rofi-wifi-menu";
      };

      "custom/sleep" = {
        format = "<span font='Hack Nerd Font' color='#f5e0dc'></span>";
        on-click = "systemctl hibernate";
        tooltip = false;
      };

      "custom/reboot" = {
        format = "<span font='Hack Nerd Font' color='#f5e0dc'></span>";
        on-click = "reboot";
        tooltip = false;
      };

      "custom/shutdown" = {
        format = "<span font='Hack Nerd Font' color='#f5e0dc'>⏻</span>";
        on-click = "shutdown now";
        tooltip = false;
      };
    };
    style = builtins.readFile ./style.css;
  };
}
