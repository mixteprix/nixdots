#!/bin/sh

nix flake update

if [ "$#" - eq 0 ]; then
sudo nixos-rebuild switch --flake .
else 
sudo nixos-rebuild switch --flake .#$1
fi
