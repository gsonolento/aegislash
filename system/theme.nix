{ pkgs, ... }:

{
  programs.dconf.enable = true;

  environment.variables = {
    GTK_THEME = "WhiteSur-Dark";
    ICON_THEME = "WhiteSur-dark";
  };

  environment.systemPackages = with pkgs; [
    whitesur-gtk-theme
    whitesur-icon-theme
    nwg-look
  ];
}
