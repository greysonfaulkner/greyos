# Debian Post Install Script

# Xorg
sudo apt install xorg
sudo apt install xterm

# XDG Directories
sudo apt install xdg-user-dirs
cd ~
xdg-user-dirs-update
cd ~/greyos

# Core Utilities
sudo apt install network-manager-gnome
sudo apt install volumeicon-alsa
sudo apt install pulseaudio
sudo apt install pavucontrol

# Fish Shell
sudo apt install fish
sudo apt install librust-starship-module-config-derive-dev

# Other Package Managers
sudo apt install flatpak
sudo apt install python3-pip

# Backend Programs
sudo apt install acpi
sudo apt install bluez
sudo apt install fprintd
sudo apt install brightnessctl
sudo apt install rofi
sudo apt install android-file-transfer
sudo apt install qt5ct
sudo apt install grub-customizer
sudo apt install font-manager
sudo apt install unar
sudo apt install feh
sudo apt install dunst
sudo apt install xfce4-power-manager
sudo apt install blueman

# Openbox
sudo apt install openbox
sudo apt install obconf
sudo apt install tint2
sudo apt install lxapperance
sudo apt install lxrandr
sudo apt install qt5-style-kvantum
sudo apt install artha

# SpectrWM
sudo apt install spectrwm
sudo apt install trayer

# TUI Programs
sudo apt install htop
sudo apt install vim
sudo apt install neofetch
sudo apt install cmatrix
sudo apt install xss-lock
sudo apt install i3lock
sudo apt install flameshot

# GUI Programs
sudo apt install pcmanfm
sudo apt install kitty
sudo apt install chromium
sudo apt install qutebrowser
sudo apt install firefox-esr
sudo apt install gparted
sudo apt install rednotebook
sudo apt install qbittorrent
sudo apt install gimp
sudo apt install stacer
sudo apt install vlc
sudo apt install mpv
sudo apt install flameshot
sudo apt install inkscape
sudo apt install leafpad
sudo apt install galculator
sudo apt install kdenlive
sudo apt install ghostwriter
sudo apt install libreoffice
sudo apt install foliate
sudo apt install okular

# Fonts
sudo apt install ttf-mscorefonts-installer
sudo apt install fonts-hack
sudo apt install fonts-jetbrains-mono

# Icons
sudo apt install papirus-icon-theme

# Themes
sudo apt install adapta-gtk-theme
sudo apt install arc-theme

# Python Packages
pip install adblock
pip install trashman

# Flatpak
flatpak install cozy
flatpak install mailspring

# Install Light DM
sudo apt install lightdm

# Libinput
sudo apt-get install wmctrl xdotool
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
cd ~/greyos

# Picom
git clone https://github.com/jonaburg/picom
cd picom
meson --buildtype=release . build
ninja -C build
# To install the binaries in /usr/local/bin (optional)
sudo ninja -C build install
cd ~/greyos

# GT3 Classic
git clone https://github.com/lah7/gtk3-classic
cd gtk3-classic
makepkg -s
cd ~/greyos

# Install Nala
sudo apt install nala

# Change Default Shell
chsh -s /bin/fish