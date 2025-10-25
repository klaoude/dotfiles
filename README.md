# packages
sudo base-devel vi vim nvim tmux zsh git stow uv lua nodejs npm eza bat fzf zoxide jq lazygit lazydocker github-cli ripgrep fd btop yazi

# Arch setup
```bash
# passwd
# useradd -m -G wheel -s /bin/zsh klaoude
# passwd klaoude
$ wsl --manage archlinux --set-default-user klaoude
```

# WSL Arch tricks
# packages
mesa vulkan-dzn vulkan-icd-loader lib32-vulkan-icd-loader
# .zshrc
export GALLIUM_DRIVER=d3d12
export LIBVA_DRIVER_NAME=d3d12

# Externall install
# YaY
git clone https://aur.archlinux.org/yay.git ~/ && cd ~/yay && makepkg -si && cd .. && rm -rf yay
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# starship (prompt)
curl -sS https://starship.rs/install.sh | sh

