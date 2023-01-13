# Debian Post Install Script

# Xorg
sudo apt install -y xorg
sudo apt install -y xterm

# XDG Directories
sudo apt install -y xdg-user-dirs
cd ~
xdg-user-dirs-update
cd ~/greyos

# Core Utilities
sudo apt install -y network-manager-gnome
sudo apt install -y volumeicon-alsa
sudo apt install -y pulseaudio
sudo apt install -y pavucontrol

# Fish Shell
sudo apt install -y fish
sudo apt install -y librust-starship-module-config-derive-dev

# Other Package Managers
sudo apt install -y flatpak
sudo apt install -y python3-pip
sudo apt install -y cargo

# Backend Programs
sudo apt install -y acpi
sudo apt install -y bluez
sudo apt install -y fprintd
sudo apt install -y brightnessctl
sudo apt install -y rofi
sudo apt install -y android-file-transfer
sudo apt install -y qt5ct
sudo apt install -y grub-customizer
sudo apt install -y font-manager
sudo apt install -y unar
sudo apt install -y feh
sudo apt install -y dunst
sudo apt install -y xfce4-power-manager
sudo apt install -y blueman

# Openbox
sudo apt install -y openbox
sudo apt install -y obconf
sudo apt install -y tint2
sudo apt install -y lxapperance
sudo apt install -y lxrandr
sudo apt install -y qt5-style-kvantum
sudo apt install -y artha

# SpectrWM
sudo apt install -y spectrwm
sudo apt install -y trayer

# TUI Programs
sudo apt install -y htop
sudo apt install -y vim
sudo apt install -y neofetch
sudo apt install -y cmatrix
sudo apt install -y xss-lock
sudo apt install -y i3lock
sudo apt install -y flameshot

# GUI Programs
sudo apt install -y pcmanfm
sudo apt install -y kitty
sudo apt install -y chromium
sudo apt install -y qutebrowser
sudo apt install -y firefox-esr
sudo apt install -y gparted
sudo apt install -y rednotebook
sudo apt install -y qbittorrent
sudo apt install -y gimp
sudo apt install -y stacer
sudo apt install -y vlc
sudo apt install -y mpv
sudo apt install -y flameshot
sudo apt install -y inkscape
sudo apt install -y leafpad
sudo apt install -y galculator
sudo apt install -y kdenlive
sudo apt install -y ghostwriter
sudo apt install -y libreoffice
sudo apt install -y foliate
sudo apt install -y okular

# Fonts
sudo apt install -y ttf-mscorefonts-installer
sudo apt install -y ttf-ubuntu-font-family
sudo apt install -y fonts-hack
sudo apt install -y fonts-jetbrains-mono

# Icons
sudo apt install -y papirus-icon-theme

# Themes
sudo apt install -y adapta-gtk-theme
sudo apt install -y arc-theme

# Python Packages
pip install adblock
pip install trashman

# Rust Packages
cargo install lsd

# Flatpak
flatpak install cozy
flatpak install mailspring

# Enabaling SDDM
sudo apt install -y sddm
sudo systemctl enable sddm

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
sudo apt install -y nala

# Change Default Shell
chsh -s /bin/fish