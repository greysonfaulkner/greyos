if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Alias List
alias hibernate="systemctl hibernate"
alias neoconf="vim .config/neofetch/config.conf"
alias polybar="/home/greyson/.config/polybar/launch.sh"
alias polyconf="vim .config/polybar/config"
alias cl="clear;neofetch"
alias top="top | lolcat"
alias files="joshuto"
alias tui="killall spotifyd;spotifyd;spt"
alias q="exit"
alias brightness="brightnessctl s"
alias vol="volumectl set"
alias mute="volumectl toggle"
alias vi="vim"
alias zshrc="vim /home/greyson/.zshrc"
alias bashrc="vim /home/greyson/.bashrc"
alias anime="ani-cli"
alias ddg="ddgr --unsafe"
alias yt="ytfzf -t"
alias spectr="vim /home/greyson/.config/spectrwm/spectrwm.conf"
alias baraction="vim /home/greyson/.config/spectrwm/baraction.sh"
alias pac="sudo pacman -S"
alias matrix="cmatrix -b -C blue"
alias play="mpv --fs"
alias markdown="mutimarkdown -t odt -o"
alias mage="cd ~/Documents/project-mage-tower"
alias launchday="cd ~/Documents/project-launch-day"
alias fantasy="cd ~/Documents/project-political-fantasy"
alias fanfic="cd ~/Documents/fanfic"
alias ls="lsd -aF"

starship init fish | source

neofetch