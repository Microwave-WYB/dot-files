alias r=". ranger"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias c="clear"
alias q="exit"
alias pk="pkill"
alias nvimc="nvim $HOME/.config/nvim/init.vim"
alias temp="gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature"
alias py="python"
alias p="builtin r"
alias arch="podman exec -it arch"
alias mutter-settings="gjs $HOME/Documents/repos/mutter-rounded-setting/dist/mutter_settings.js"
alias rm=trash

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
