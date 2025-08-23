{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

  dmenu
  i3-rounded
  i3lock
  ];

  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;


}
