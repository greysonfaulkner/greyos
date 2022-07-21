#!/bin/bash

# Install Paru
echo "*******************************"
echo "*****Installing AUR Helper*****"
echo "*******************************"
sleep 1
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~/greyos

# Install ZSH
echo "************************"
echo "*****Installing ZSH*****"
echo "************************"
sleep 1
sudo pacman -S zsh

# Moving Dot Files and Other Directories
echo "******************************"
echo "*****Installing Dot Files*****"
echo "******************************"
sleep 1
mv ascii/ ~
mv wallpapers/ ~
mv gifs/ ~
mv .bashrc ~
mv .zshrc ~
mv .config/ ~
mv .themes/ ~
mv .icons/ ~
mv .sounds/ ~
mv .local/ ~
sudo mv sddm/ /usr/share

# Creating Directories
echo "******************************"
echo "*****Creating Directories*****"
echo "******************************"
sleep 1
mkdir ~/Documents
mkdir ~/Videos
mkdir ~/Music
mkdir ~/Downloads
mkdir ~/Pictures

# Install Fonts and Themes
echo "*************************************"
echo "*****Installing Fonts and Themes*****"
echo "*************************************"
sleep 1
sudo pacman -S adapta-gtk-theme adobe-source-code-pro-fonts adobe-source-sans-fonts arc-gtk-theme arc-icon-theme ttf-hack ttf-jetbrains-mono ttf-joypixels ttf-ms-fonts ttf-ubuntu-font-family gnu-free-fonts noto-fonts

# Install Back End Programs
echo "**************************************"
echo "*****Installing Back End Programs*****"
echo "**************************************"
sleep 1
sudo pacman -S bluez bluez-util ssddm flatpak vim starship rofi neofetch
paru -S picom-jonaburg-git ani-cli fprint brightnessctl volumectl xfce4-power-manager libinput-gestures gestures dunst artha xss-lock xrootgif polkit-gnome oh-my-zsh-git   

# Install Openbox and Basic Gui Tools
echo "*******************************************************"
echo "*****Installing Window Manager and Basic GUI Tools*****"
echo "*******************************************************"
sleep 1
sudo pacman -S openbox obconf nitrogen lxappearance plank
paru -S obmenu nm-applet vala-panel xfce4-panel arohlinux-betterlockscreen arcolinux-logout blueberry-tray cbatticon volumeicon

# Install Extra Programs
echo "*********************************"
echo "*****Installing GUI Programs*****"
echo "*********************************"
sleep 1
paru -S google-chrome-stable ghostwriter spotify foliate smplayer audacity gimp kdenlive obs discord steam firefox mailspring manuskirpt libre-office stacer notepadqq alacritty kitty qbittorrent okular xterm deadbeef vlc mpv flameshot ranger feh ristretto inkscape mcomix thunar

# Install Extra Programs
echo "***********************************"
echo "*****Installing Extra Programs*****"
echo "***********************************"
sleep 1
paru -S xfce4-docklike-plugin vala-panel-appmenu appmenu-gtk-module-git xarchiver thunar-archive-plugin

# Enabaling ZSH Shell
echo "***********************"
echo "*****Enabaling ZSH*****"
echo "***********************"
sleep 1
chsh -s /usr/bin/zsh

# Enabaling SDDM
echo "************************"
echo "*****Enabaling SDDM*****"
echo "************************"
sleep 1
sudo systemctl enable sddm

# Reboot Prompt
echo "**************************"
echo "*****Install Complete*****"
echo "**************************"
while true; do
    read -p "Do you want to reboot? [Y/n] " yn
    case $yn in
        [Yy]* ) reboot;;
        [Nn]* ) break;;
        "" ) reboot;;
        * ) echo "Please answer yes or no.";;
    esac
done