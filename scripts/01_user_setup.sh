#!/bin/bash

sudo pacman -S nvim tmux zsh uv lua nodejs npm eza bat fzf zoxide jq lazygit lazydocker github-cli ripgrep fd btop yazi
git clone https://aur.archlinux.org/yay.git ~/ && cd ~/yay && makepkg -si && cd .. && rm -rf yay
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -sS https://starship.rs/install.sh | sh
