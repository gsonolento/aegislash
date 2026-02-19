{ config, pkgs, inputs, ... }:

{

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Básicos
    nano wget git fastfetch unzip eza fzf lazygit git

    # Terminais
    kitty alacritty micro 

    # browser/ study
    librewolf mpv onlyoffice-desktopeditors polybar sxhkd rofi flameshot xmobar trayer emacs

    #apps
    dunst libnotify appimage-run pear-desktop  mesa glfw pomodoro-gtk focuswriter

    # Dev
    vscodium
    neovim
    zed-editor

    # Fontes
    nerd-fonts.iosevka
    nerd-fonts.jetbrains-mono
    nerd-fonts.lilex

  ];
}
