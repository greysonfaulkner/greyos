#!/bin/bash

# Install Paru
echo "*******************************"
echo "*****Installing AUR Helper*****"
echo "*******************************"
sleep 1
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
sudo pacman -S adapta-gtk-theme adobe-source-code-pro-fonts adobe-source-sans-fonts arc-gtk-theme arc-icon-theme ttf-hack ttf-jetbrains-mono ttf-joypixels ttf-ms-fonts ttf-ubuntu-font-family gnu-free-fonts noto-fonts ttf-nerd-fonts-symbols

# Install Back End Programs
echo "**************************************"
echo "*****Installing Back End Programs*****"
echo "**************************************"
sleep 1
sudo pacman -S bluez
sudo pacman -S flatpak
sudo pacman -S vim
sudo pacman -S starship
sudo pacman -S rofi
sudo pacman -S neofetch
sudo pacman -S lsd
paru -S picom-jonaburg-git
paru -S bluez-util
paru -S ani-cli
paru -S fprint
paru -S brightnessctl
paru -S volumectl
paru -S xfce4-power-manager
paru -S libinput-gestures
paru -S gestures
paru -S dunst
paru -S artha
paru -S xss-lock
paru -S xrootgif
paru -S polkit-gnome

# Install Openbox and Basic Gui Tools
echo "*******************************************************"
echo "*****Installing Window Manager and Basic GUI Tools*****"
echo "*******************************************************"
sleep 1
sudo pacman -S openbox
sudo pacman -S obconf
sudo pacman -S nitrogen
sudo pacman -S lxappearance
sudo pacman -S plank
paru -S obmenu
paru -S nm-applet
paru -S vala-panel
paru -S xfce4-panel
paru -S arcolinux-betterlockscreen
paru -S arcolinux-logout
paru -S blueberry-tray
paru -S cbatticon
paru -S volumeicon

# Install Extra Programs
echo "*********************************"
echo "*****Installing GUI Programs*****"
echo "*********************************"
sleep 1
sudo pacman -S libreoffice-fresh
paru -S google-chrome
paru -S ghostwriter
paru -S spotify
paru -S foliate
paru -S smplayer
paru -S audacity
paru -S gimp
paru -S kdenlive
paru -S obs
paru -S discord
paru -S steam
paru -S firefox
paru -S mailspring
paru -S manuskirpt
paru -S stacer
paru -S notepadqq
paru -S alacritty
paru -S kitty
paru -S qbittorrent
paru -S okular
paru -S xterm
paru -S deadbeef
paru -S vlc
paru -S mpv
paru -S flameshot
paru -S ranger
paru -S feh
paru -S ristretto
paru -S inkscape
paru -S mcomix
paru -S thunar

# Install Extra Programs
echo "***********************************"
echo "*****Installing Extra Programs*****"
echo "***********************************"
sleep 1
paru -S xarchiver thunar-archive-plugin xfce4-docklike-plugin

# Install Global Appmenu
echo "***********************************"
echo "*****Installing Extra Programs*****"
echo "***********************************"
sleep 1

# Enabaling ZSH Shell
echo "***********************"
echo "*****Enabaling ZSH*****"
echo "***********************"
sleep 1
sudo pacman -S oh-my-zsh-git
sudo pacman -S zsh-syntax-highlighting
chsh -s /usr/bin/zsh

# Enabaling SDDM
echo "************************"
echo "*****Enabaling SDDM*****"
echo "************************"
sleep 1
sudo pacman -S sddm
sudo mv sddm/ /usr/share
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