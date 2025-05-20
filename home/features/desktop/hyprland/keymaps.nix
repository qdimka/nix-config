{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "SUPER, W, killactive"
      "SUPER, S, togglefloating"
      "SUPER, P, pseudo"
      "SUPER, F, fullscreen"

      "SUPER, H, movefocus, l"
      "SUPER, L, movefocus, r"
      "SUPER, K, movefocus, u"
      "SUPER, J, movefocus, d"

      "SUPER SHIFT, H, movewindow, l"
      "SUPER SHIFT, L, movewindow, r"
      "SUPER SHIFT, K, movewindow, u"
      "SUPER SHIFT, J, movewindow, d"

      "SUPER, 1, workspace, 1"
      "SUPER, 2, workspace, 2"
      "SUPER, 3, workspace, 3"
      "SUPER, 4, workspace, 4"
      "SUPER, 5, workspace, 5"

      "SUPER, TAB, workspace, previous"

      "SUPER SHIFT, 1, movetoworkspace, 1"
      "SUPER SHIFT, 2, movetoworkspace, 2"
      "SUPER SHIFT, 3, movetoworkspace, 3"
      "SUPER SHIFT, 4, movetoworkspace, 4"
      "SUPER SHIFT, 5, movetoworkspace, 5"

      "SUPER, D, exec, rofi -show drun"
      "SUPER SHIFT, S, exec, hyprshot -m region -f Pictures/Screenshots/$(date +%H-%M-%S-%m-%Y).png"
      "SUPER SHIFT, C, exec, hyprpicker | wl-copy"
    ];

    binde = [
      "SUPER ALT, H, resizeactive, -10 0"
      "SUPER ALT, L, resizeactive, 10 0"
      "SUPER ALT, K, resizeactive, 0 -10"
      "SUPER ALT, J, resizeactive, 0 10"
    ];

    bindm = [
      "SUPER, mouse:272, movewindow"
      "SUPER, mouse:273, resizewindow"
    ];

    binds.movefocus_cycles_fullscreen = 1;
  };
}
