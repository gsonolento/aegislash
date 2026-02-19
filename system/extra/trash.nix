{ config, lib, pkgs, ... }:

{
  nix.settings = {
    auto-optimise-store = true;
    experimental-features = [ "nix-command" "flakes" ];
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };

  programs.nh = {
    enable = true;
    clean.enable = false;
    flake = "/etc/nixos";
  };

  powerManagement.enable = true;

  zramSwap = {
    enable = true;
    memoryPercent = 75;
    algorithm = "lzo-rle";
    priority = 5;
  };
}
