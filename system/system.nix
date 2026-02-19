{ config, lib, pkgs, inputs, ... }:
{
  imports =
    [
      ./hardware.nix
      ./desktops.nix
      ./packages.nix
    ];

#boot
 boot.loader.systemd-boot.enable = false;
 boot.loader.efi.canTouchEfiVariables = true;
 hardware.enableRedistributableFirmware = true;
 hardware.cpu.intel.updateMicrocode = true;

 boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev";
};

 networking.hostName = "athena";
 networking.networkmanager.enable = true;

   # Idioma do sistema
  i18n.defaultLocale = "pt_BR.UTF-8";

  # Locales extras (evita bugs em apps)
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  # Layout do teclado
  services.xserver.xkb = {
    layout = "br";
    variant = "abnt2";
  };

  # Console (TTY)
  console = {
    keyMap = "br-abnt2";
  };

  # Fuso horário (confirmação)
  time.timeZone = "America/Belem";

  system.stateVersion = "25.11";

  xdg.portal = {
    enable = true;
    config.common.default = "gtk";
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-wlr
    ];
  };
}
