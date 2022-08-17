#!/bin/bash
# Arch Post Install Script
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

# Install FISH
echo "*************************"
echo "*****Installing Fish*****"
echo "*************************"
sleep 1
sudo pacman -S --noconfirm fish
chsh -s /bin/fish

# Creating Directories
echo "******************************"
echo "*****Creating Directories*****"
echo "******************************"
sleep 1
sudo pacman -S --noconfirm xdg-user-dirs
cd ~
xdg-user-dirs-update
cd ~/greyos

# Install Fonts and Themes
echo "*************************************"
echo "*****Installing Fonts and Themes*****"
echo "*************************************"
sleep 1
sudo pacman -S --noconfirm adapta-gtk-theme
sudo pacman -S --noconfirm adobe-source-code-pro-fonts
sudo pacman -S --noconfirm adobe-source-sans-fonts
sudo pacman -S --noconfirm arc-gtk-theme
sudo pacman -S --noconfirm arc-icon-theme
sudo pacman -S --noconfirm papirus-icon-theme
sudo pacman -S --noconfirm ttf-jetbrains-mono
sudo pacman -S --noconfirm ttf-joypixels
sudo pacman -S --noconfirm ttf-ubuntu-font-family
sudo pacman -S --noconfirm gnu-free-fonts
sudo pacman -S --noconfirm noto-fonts
sudo pacman -S --noconfirm ttf-nerd-fonts-symbols
sudo pacman -S --noconfirm ttf-caladea
sudo pacman -S --noconfirm ttf-carlito
sudo pacman -S --noconfirm ttf-dejavu
sudo pacman -S --noconfirm ttf-liberation
sudo pacman -S --noconfirm ttf-opensans
sudo pacman -S --noconfirm otf-overpass
sudo pacman -S --noconfirm ttf-roboto
sudo pacman -S --noconfirm tex-gyre-fonts
paru -S --noconfirm dracula-gtk-theme
paru -S --noconfirm ttf-courier-prime
paru -S --noconfirm ttf-hack
paru -S --noconfirm ttf-gelasio-ib
paru -S --noconfirm ttf-merriweather
paru -S --noconfirm ttf-source-sans-pro-ibx
paru -S --noconfirm ttf-signika
paru -S --noconfirm bibata-cursor-theme
paru -S --noconfirm ttf-ms-fonts
paru -S --noconfirm ttf-impallari-cantora

# Install Back End Programs
echo "**************************************"
echo "*****Installing Back End Programs*****"
echo "**************************************"
sleep 1
sudo pacman -S --noconfirm bluez
sudo pacman -S --noconfirm flatpak
sudo pacman -S --noconfirm vim
sudo pacman -S --noconfirm starship
sudo pacman -S --noconfirm rofi
sudo pacman -S --noconfirm neofetch
sudo pacman -S --noconfirm lsd
sudo pacman -S --noconfirm htop
paru -S --noconfirm picom-jonaburg-git
paru -S --noconfirm ani-cli
paru -S --noconfirm fprint
paru -S --noconfirm brightnessctl
paru -S --noconfirm volumectl
paru -S --noconfirm xfce4-power-manager
paru -S --noconfirm libinput-gestures
paru -S --noconfirm gestures
paru -S --noconfirm dunst
paru -S --noconfirm artha
paru -S --noconfirm xss-lock
paru -S --noconfirm xrootgif
paru -S --noconfirm polkit-gnome
paru -S --noconfirm kvantum
paru -S --noconfirm mutimarkdown
paru -S --noconfirm cmatrix

# Install Openbox and Basic Gui Tools
echo "*******************************************************"
echo "*****Installing Window Manager and Basic GUI Tools*****"
echo "*******************************************************"
sleep 1
sudo pacman -S --noconfirm openbox
sudo pacman -S --noconfirm obconf
sudo pacman -S --noconfirm nitrogen
sudo pacman -S --noconfirm lxappearance
sudo pacman -S --noconfirm lxrandr
sudo pacman -S --noconfirm plank
sudo pacman -S --noconfirm network-manager-applet
sudo pacman -S --noconfirm blueberry
paru -S --noconfirm obmenu
paru -S --noconfirm xfce4-panel
paru -S --noconfirm arcolinux-betterlockscreen
paru -S --noconfirm arcolinux-logout
paru -S --noconfirm cbatticon
paru -S --noconfirm volumeicon

# Install Extra Programs
echo "*********************************"
echo "*****Installing GUI Programs*****"
echo "*********************************"
sleep 1
sudo pacman -S --noconfirm libreoffice-fresh
sudo pacman -S --noconfirm vbam-wx
paru -S --noconfirm qutebrowser
paru -S --noconfirm cozy-audiobooks
paru -S --noconfirm ghostwriter
paru -S --noconfirm spotify
paru -S --noconfirm foliate
paru -S --noconfirm smplayer
paru -S --noconfirm audacity
paru -S --noconfirm gimp
paru -S --noconfirm kdenlive
paru -S --noconfirm obs-studio
paru -S --noconfirm discord
paru -S --noconfirm steam
paru -S --noconfirm firefox
paru -S --noconfirm mailspring
paru -S --noconfirm manuskirpt
paru -S --noconfirm stacer
paru -S --noconfirm notepadqq
paru -S --noconfirm alacritty
paru -S --noconfirm qbittorrent
paru -S --noconfirm okular
paru -S --noconfirm xterm
paru -S --noconfirm deadbeef
paru -S --noconfirm vlc
paru -S --noconfirm mpv
paru -S --noconfirm flameshot
paru -S --noconfirm ranger
paru -S --noconfirm feh
paru -S --noconfirm ristretto
paru -S --noconfirm inkscape
paru -S --noconfirm mcomix
paru -S --noconfirm thunar

# Install Extra Programs
echo "***********************************"
echo "*****Installing Extra Programs*****"
echo "***********************************"
sleep 1
paru -S --noconfirm xarchiver thunar-archive-plugin xfce4-docklike-plugin

# Install Global Appmenu
echo "***********************************"
echo "*****Installing Global Appmenu*****"
echo "***********************************"
sleep 1
cd ~
git clone https://gitlab.com/vala-panel-project/vala-panel-appmenu.git
cd vala-panel-appmenu
mkdir ~/vala-panel-appmenu/global
meson -Dxfce=enabled -Dvalapanel=enabled ~/vala-panel-appmenu/global
cd ~/vala-panel-appmenu/global
ninja && sudo ninja install
cd ~/greyos
paru -S --noconfirm vala-panel-applets-xembed-git
rm -rf ~/vala-panel-appmenu

# Enabaling SDDM
echo "************************"
echo "*****Enabaling SDDM*****"
echo "************************"
sleep 1
sudo pacman -S --noconfirm sddm
sudo systemctl enable sddm
sudo mv sddm.conf /etc
sudo rm -rf /usr/share/sddm
sudo mv sddm/ /usr/share

# Moving Dot Files and Other Directories
echo "******************************"
echo "*****Installing Dot Files*****"
echo "******************************"
sleep 1
sudo cp -r .themes/tokyo-night-openbox /usr/share/themes
sudo cp -r .themes/tokyo-night /usr/share/themes
sudo cp -r .themes/dracula-openbox /usr/share/themes
sudo rm -rf ~/greyos/.themes
sudo cp -r .icons/TokyoNight/ /usr/share/icons
sudo rm -rf ~/greyos/.icons
mv ascii/ ~
mv wallpapers/ ~
mv gifs/ ~
mv .bashrc ~
mv .zshrc ~
rm -rf ~/.config
mv .config/ ~
mv .sounds/ ~
mv .local/ ~
mv .xinitrc ~
sudo rm -rf /usr/share/smplayer
sudo mv smplayer/ /usr/share

# Clean Up
echo "***************************"
echo "*****Cleaning Up Files*****"
echo "***************************"
sleep 1
sudo pacman -Qtdq | sudo pacman -Rns -
cd ~
rm -rf ~/greyos

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