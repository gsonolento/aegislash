{ config, lib, pkgs, inputs, ... }: 

{
  imports = [
    ./suckless/lucky.nix
    ./user/user.nix
    ./system/system.nix 
  ];
}
