# Shell
sudo apt install -y fish
chsh -s /bin/fish

# Xorg
sudo apt install -y xorg

# Pulseaudio
sudo apt install -y pulseaudio

# Network Manager
sudo apt install -y network-manager-gnome

# XDG Directories
sudo apt install -y xdg-user-dirs
cd ~
xdg-user-dirs-update
cd ~/greyos

# Themes
sudo apt install -y adapta-gtk-theme
sudo apt install -y arc-theme

# Icons
sudo apt install -y papirus-icon-theme

# Picom
git clone https://github.com/jonaburg/picom
cd picom
meson --buildtype=release . build
ninja -C build
# To install the binaries in /usr/local/bin (optional)
sudo ninja -C build install
cd ~/greyos

# Back End Programs
sudo apt install -y bluez
sudo apt install -y flatpak
sudo apt install -y vim
sudo apt install -y librust-starship-module-config-derive-dev
sudo apt install -y rofi
sudo apt install -y neofetch
sudo apt install -y htop
sudo apt install -y fprintd
sudo apt install -y brightnessctl
sudo apt install -y xfce4-power-manager
sudo apt install -y dunst
sudo apt install -y artha
sudo apt install -y xss-lock
sudo apt install -y policykit-1-gnome
sudo apt install -y qt5-style-kvantum
sudo apt install -y cmatrix

# Libinput
sudo apt-get install wmctrl xdotool
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
cd ~/greyos

# Volumectl

# GT3 Classic
git clone https://github.com/lah7/gtk3-classic
cd gtk3-classic
makepkg -s
cd ~/greyos

# Window Managers and Base GUI Tools
sudo apt install -y openbox
sudo apt install -y obconf
sudo apt install -y spectrwm
sudo apt install -y nitrogen
sudo apt install -y lxappearance
sudo apt install -y lxrandr
sudo apt install -y plank
sudo apt install -y 
sudo apt install -y
sudo apt install -y
sudo apt install -y