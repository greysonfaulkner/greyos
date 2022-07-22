#!/bin/bash
# Arch Install Script
#   ___ ___ _____   _____  ___  _  _   ___ _  _   _ _    _  ___  _ ___ ___
#  / __| _ \ __\ \ / / __|/ _ \| \| | | __/_\| | | | |  | |/ / \| | __| _ \
# | (_ |   / _| \ V /\__ \ (_) | .` | | _/ _ \ |_| | |__| ' <| .` | _||   /
#  \___|_|_\___| |_| |___/\___/|_|\_| |_/_/ \_\___/|____|_|\_\_|\_|___|_|_\

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

# Creating Directories
echo "******************************"
echo "*****Creating Directories*****"
echo "******************************"
sleep 1
sudo pacman -S xdg-user-dirs
cd ~
xdg-user-dirs-update
cd ~/greyos

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
rm -rf ~/.config
mv .config/ ~
mv .themes/ ~
mv .icons/ ~
mv .sounds/ ~
mv .local/ ~

# Install Fonts and Themes
echo "*************************************"
echo "*****Installing Fonts and Themes*****"
echo "*************************************"
sleep 1
sudo pacman -S adapta-gtk-theme
sudo pacman -S adobe-source-code-pro-fonts
sudo pacman -S adobe-source-sans-fonts
sudo pacman -S arc-gtk-theme
sudo pacman -S arc-icon-theme
sudo pacman -S papirus-icon-theme
sudo pacman -S ttf-jetbrains-mono
sudo pacman -S ttf-joypixels
sudo pacman -S ttf-ubuntu-font-family
sudo pacman -S gnu-free-fonts
sudo pacman -S noto-fonts
sudo pacman -S ttf-nerd-fonts-symbols
sudo pacman -S ttf-caladea
sudo pacman -S ttf-carlito
sudo pacman -S ttf-dejavu
sudo pacman -S ttf-liberation
sudo pacman -S ttf-opensans
sudo pacman -S otf-overpass
sudo pacman -S ttf-roboto
sudo pacman -S tex-gyre-fonts
paru -S ttf-courier-prime
paru -S ttf-hack
paru -S ttf-gelasio-ib
paru -S ttf-merriweather
paru -S ttf-source-sans-pro-ibx
paru -S ttf-signika
paru -S bibata-cursor-theme
paru -S ttf-ms-fonts
paru -S ttf-impallari-cantora

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
sudo pacman -S htop
paru -S picom-jonaburg-git
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
paru -S kvantum
paru -S mutimarkdown
paru -S cmatrix

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
sudo pacman -S network-manager-applet
sudo pacman -S blueberry
paru -S obmenu
paru -S vala-panel
paru -S xfce4-panel
paru -S arcolinux-betterlockscreen
paru -S arcolinux-logout
paru -S cbatticon
paru -S volumeicon

# Install Extra Programs
echo "*********************************"
echo "*****Installing GUI Programs*****"
echo "*********************************"
sleep 1
sudo pacman -S libreoffice-fresh
paru -S google-chrome
paru -S cozy-audiobooks
paru -S ghostwriter
paru -S spotify
paru -S foliate
paru -S smplayer
paru -S audacity
paru -S gimp
paru -S kdenlive
paru -S obs-studio
paru -S discord
paru -S steam
paru -S firefox
paru -S mailspring
paru -S manuskirpt
paru -S stacer
paru -S notepadqq
paru -S alacritty
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
echo "*****Installing Global Appmenu*****"
echo "***********************************"
sleep 1
cd ~
git clone https://gitlab.com/vala-panel-project/vala-panel-appmenu.git
cd vala-panel-appmenu
meson -Dxfce=enabled -Dvalapanel=enabled ~/vala-panel-appmenu
ninja && sudo ninja install
cd ~/greyos
paru -S vala-panel-applets-xembed-git

# Enabaling ZSH Shell
echo "***********************"
echo "*****Enabaling ZSH*****"
echo "***********************"
sleep 1
paru -S oh-my-zsh-git
paru -S zsh-syntax-highlighting
chsh -s /usr/bin/zsh

# Enabaling SDDM
echo "************************"
echo "*****Enabaling SDDM*****"
echo "************************"
sleep 1
sudo pacman -S sddm
sudo systemctl enable sddm
sudo mv sddm.conf /etc
sudo rm -rf /usr/share/sddm
sudo mv sddm/ /usr/share

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