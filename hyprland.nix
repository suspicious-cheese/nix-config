{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

  waybar
  wofi
  mako

  ];

  services.xwayland.enable = true;

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

  programs.hyprland.enable = true;


}
