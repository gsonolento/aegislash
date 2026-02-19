{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    videoDrivers = [ "modesetting" ];
  };

  services.displayManager.ly = {
    enable = true;
    settings = {
      animation = "none";
      hide_borders = true;
      clear_password = true;
    };
  };

  services.xserver.windowManager.pekwm.enable = true;
  services.xserver.windowManager.xmonad = {
  enable = true;
  enableContribAndExtras = true;
};


programs.sway = {
  enable = true;
  wrapperFeatures.gtk = true; # tema GTK funciona
};

programs.sway.package = pkgs.swayfx;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      mesa
      intel-media-driver
      intel-vaapi-driver
      libvdpau-va-gl
    ];
  };

  environment.variables = {
    LIBVA_DRIVER_NAME = "iHD";
    WLR_NO_HARDWARE_CURSORS = "1";
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    elisa
    khelpcenter
    konversation
    discover
    plasma-browser-integration
    kdeconnect-kde
  ];

}
