# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# @todo dynamic ruby folder variable

export TERM=xterm-256color
export PATH=$HOME/.gem/ruby/2.4.0/bin:$PATH

export PATH=/.npm-global/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH

export PATH=/opt/anaconda/bin:$PATH


# export PATH= /opt/anaconda/bin/anaconda:$PATH

export MANPAGER="vim -c MANPAGER -"

export EDITOR="vim"

# configurator:
#https://dom111.github.io/grep-colors/#!input=c2w9OTc7NDg7NTsyMzY6Y3g9Mzc7NDA6bXQ9MzA7NDg7NTsxODY6Zm49Mzg7NTsxOTc6bG49Mzg7NTsxNTQ6Ym49Mzg7NTsxNDE6c2U9Mzg7NTs4MQ==&
export GREP_COLORS='mt=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36';

# Path to your oh-my-zsh installation.
export ZSH=/home/mstarostenko/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster_mod"
# ZSH_THEME="bira"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git last-working-dir web-search extract)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# ===================================================================
# ===================================================================
# ===================================================================
# # Чтобы не срабатывал freezing терминала, когда нажимаешь ctrl + s
stty -ixon

# Colorscheme on ANSI sequences
if [ -f $HOME/.Scripts/gruvbox_256palette.sh ]; then
    . $HOME/.Scripts/gruvbox_256palette.sh
fi

# Activate Vim mode
bindkey -v

# Remove delay when entering normal mode (vi)
KEYTIMEOUT=1

# https://gist.github.com/andyfowler/1195581
# use cursor as indicator of vi mode
zle-keymap-select () {
  if [ $KEYMAP = vicmd ]; then
    if [[ $TMUX = '' ]]; then
      echo -ne "\033]12;#ff2734\007"
      echo -ne "\e[1 q"
    else
      printf '\033Ptmux;\033\033[1 q\033\\'
      # printf '\033Ptmux;\033\033]12;#ff2734\007\033\\'
      # echo -ne "\e[1 q"
    fi
  else
    if [[ $TMUX = '' ]]; then
      echo -ne "\033]12;#ff2734\007"
      echo -ne "\e[5 q"
    else
      printf '\033Ptmux;\033\033[5 q\033\\'
      # printf '\033Ptmux;\033\033]12;#ff2734\007\033\\'
      # printf '\e[5 q'
    fi
  fi
}
zle-line-init () {
  zle -K viins
  echo -ne "\033]12;#ff2734\007"
    printf '\e[5 q'
}
zle -N zle-keymap-select
zle -N zle-line-init


# Deprecated
alias dm="/usr/bin/networkmanager_dmenu"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ]   && source /usr/share/fzf/completion.zsh



man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

fasd_cache="$HOME/.fasd-init-zsh"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install>| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache

alias v='f -e vim' # quick opening files with vim
alias m='f -e mplayer' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open

# @todo not working
# HISTORY_IGNORE="cl"

source $HOME/.zshrc_aliases
