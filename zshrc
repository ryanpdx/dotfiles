# exports
export PATH="$PATH:/opt/cuda/include/"
export PATH="$PATH:~/.local/bin/"

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# oh-my-zsh && spaceship-prompt
ZSH_THEME="spaceship"
SPACESHIP_EXEC_TIME_SHOW="false"
HYPHEN_INSENSITIVE="true"

plugins=(
    git
    rsync
    ssh-agent
    fzf
    python
    pip
    command-not-found
    colored-man-pages
    common-aliases
    thefuck
)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# my alias
alias i3lock='i3lock -c 000000'
alias gpu_run='sudo PRIMUS_SYNC=1 vblank_mode=0 primusrun'
alias backlight='bash ~/.dotfiles/bin/backlight.sh'
