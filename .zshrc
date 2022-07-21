export ZSH=/usr/share/oh-my-zsh/

# Alias List
alias hibernate="systemctl hibernate"
#alias ls="lsd -aF"
alias neoconf="vim .config/neofetch/config.conf"
alias polyconf="vim .config/polybar/config"
alias cl="clear;neofetch"
alias q="exit"
alias brightness="brightnessctl s"
alias vol="volumectl set"
alias mute="volumectl toggle"
alias vi="vim"
alias zshrc="vim /home/greyson/.zshrc"
alias bashrc="vim /home/greyson/.bashrc"
alias anime="ani-cli"
alias spectr="vim /home/greyson/.config/spectrwm/spectrwm.conf"
alias keybinds="vim /home/greyson/.config/spectrwm/keybinds.conf"
alias baraction="vim /home/greyson/.config/spectrwm/baraction.sh"
alias pac="sudo pacman -S"
alias matrix="cmatrix -b -C blue"
alias play="mpv --fs"
alias markdown"mutimarkdown -t odt -o"
alias piconf="vim /home/greyson/.config/picom/picom.conf"\

#Neofetch
#alias neofetch="neofetch --source /home/greyson/ascii/pirates.txt | lolcat -p 1.8 -a -d 1"

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init zsh)"

# Run a Neofetch at Launch
neofetch
