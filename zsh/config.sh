alias r=". ranger"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias c="clear"
alias q="exit"
alias pk="pkill"
alias nvimc="nvim $HOME/.config/nvim/init.vim"
alias swayc="nvim $HOME/.config/sway/config"
alias waybarc="nvim $HOME/.config/waybar/config"
alias kittyc="nvim $HOME/.config/kitty/kitty.conf"
alias temp="gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature"
alias py="python"
alias p="builtin r"
alias mutter-settings="gjs $HOME/Documents/repos/mutter-rounded-setting/dist/mutter_settings.js"
# Tmux
alias t="tmux attach -t"
alias tls="tmux ls"
# Git
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gpl="git pull"
alias gc="git commit"
alias gca="git commit -a"

# Functions

# cd and ls
d () {
    if [ $# -eq 0 ]; then
        cd
    else
        cd "$@"
    fi
    ls
}

# Run a command in the background and detach it
bg () {
    "$@" & > /dev/null 2>&1
    disown
}

# Environment
export PATH=$PATH:$HOME/.local/bin
# export TERM=xterm-256color

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0222222" #black
    echo -en "\e]P8222222" #darkgrey
    echo -en "\e]P1803232" #darkred
    echo -en "\e]P9982b2b" #red
    echo -en "\e]P25b762f" #darkgreen
    echo -en "\e]PA89b83f" #green
    echo -en "\e]P3aa9943" #brown
    echo -en "\e]PBefef60" #yellow
    echo -en "\e]P4324c80" #darkblue
    echo -en "\e]PC2b4f98" #blue
    echo -en "\e]P5706c9a" #darkmagenta
    echo -en "\e]PD826ab1" #magenta
    echo -en "\e]P692b19e" #darkcyan
    echo -en "\e]PEa1cdcd" #cyan
    echo -en "\e]P7ffffff" #lightgrey
    echo -en "\e]PFdedede" #white
fi

# kitty ssh
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"
