{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

  dmenu

  ];

  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;


}
