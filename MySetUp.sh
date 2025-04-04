#!/usr/bin/bash

# My bashrc
rm ~/.bashrc
cp -r ~/LBarrysOS/.bashrc ~

# Softwares
sudo pacman -S firefox fastfetch timeshift flatpak transmission-gtk telegram-desktop evolution wget curl

# AUR
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

# My configs
cp -r /LBarrysOS/ghostty ~/.config
cp -r /LBarrysOS/fastfetch ~/.config

# Fonts
sudo pacman -S ttf-jetbrains-mono
paru -S ttf-ms-win11-auto
gsettings set org.gnome.desktop.interface font-name "Segoe UI Bold 10"
gsettings set org.gnome.desktop.interface document-font-name "Segoe UI Bold 10"
gsettings set org.gnome.desktop.interface monospace-font-name "JetBrains Mono 10"

# GTK theme
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
yes | ./install.sh --theme green --color dark --size standard --icon arch --libadwaita --tweaks solid compact dock
gsettings set org.gnome.desktop.interface gtk-theme Orchis-Green-Dark
gsettings set org.gnome.shell.extensions.user-theme name Orchis-Green-Dark
cd ..

# Icon theme
sudo pacman -S papirus-icon-theme
gsettings set org.gnome.desktop.interface icon-theme Papirus-Dark
paru -S papirus-folders
papirus-folders -C green

# Cursor theme
sudo pacman -S capitaine-cursors
gsettings set org.gnome.desktop.interface cursor-theme Capitaine-cursors-light

