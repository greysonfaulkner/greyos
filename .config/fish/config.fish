if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Alias List
alias hibernate="systemctl hibernate"
alias neoconf="vim .config/neofetch/config.conf"
alias cl="clear;neofetch"
alias files="ranger"
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
alias ls="lsd -aF"
alias swap="/home/greyson/.scripts/swap.sh"

#alias neofetch="neofetch --source /home/greyson/ascii/arch"

starship init fish | source

neofetch
