#!/bin/bash

if [ "$EUID" -ne 0]; then
	exit 0
fi

passwd
pacman -Syu
pacman -S git base-devel sudo vi vim stow

echo "Username: "
read username
useradd -m -G wheel -s /bin/zsh "$username"
passwd "$username"
echo "[user]\ndefault=klaoude" >> /ect/wsl.conf
echo "%wheel ALL=(ALL:ALL) ALL" >> /etc/sudoers.d/wheel
