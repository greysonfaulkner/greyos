#!/bin/bash

# Install Paru
echo "*******************************"
echo "*****Installing AUR Helper*****"
echo "*******************************"
sleep 5
sudo pacman -S paru

# Install ZSH
echo "************************"
echo "*****Installing ZSH*****"
echo "************************"
sleep 5
sudo pacman -S zsh

# Install Openbox and Basic Gui Tools
echo "*******************************************************"
echo "*****Installing Window Manager and Basic GUI Tools*****"
echo "*******************************************************"
sleep 5
paru -S openbox obmenu obconf nitrogen lxappearance plank vala-panel xfce4-panel archlinux-betterlockscreen archlinux-logout nm-applet blueberry-tray cbatticon volumeicon

# Install Back End Programs
echo "**************************************"
echo "*****Installing Back End Programs*****"
echo "**************************************"
sleep 5
paru -S picom-jonaburg-git sddm fprint brightnessctl volumectl xfce4-power-manager libinput-gestures gestures dunst artha xss-lock flatpak xrootgif polkit-gnome oh-my-zsh-git vim starship rofi

# Install Extra Programs
echo "*********************************"
echo "*****Installing GUI Programs*****"
echo "*********************************"
sleep 5
paru -S google-chrome-stable ghostwriter spotify foliate smplayer audacity gimp kdenlive obs discord steam firefox mailspring manuskirpt libre-office stacer notepadqq alacritty kitty qbittorrent okular xterm deadbeef vlc mpv flameshot ranger feh ristretto inkscape mcomix thunar

# Install Extra Programs
echo "***********************************"
echo "*****Installing Extra Programs*****"
echo "***********************************"
sleep 5
paru -S xfce4-docklike-plugin vala-panel-appmenu appmenu-gtk-module-git xarchiver thunar-archive-plugin

echo "******************************"
echo "*****Installing Dot Files*****"
echo "******************************"
sleep 5


echo "***********************"
echo "*****Enabaling ZSH*****"
echo "***********************"
sleep 5
chsh -s /usr/bin/zsh