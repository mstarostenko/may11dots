#
# ~/.bashrc
#
export EDITOR="vim"

# Чтобы не срабатывал freezing терминала, когда нажимаешь ctrl + s
stty -ixon

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f $HOME/gruvbox_256palette.sh ]; then
    . $HOME/gruvbox_256palette.sh
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -n "$TMUX" ]; then
    echo 'TMUX 88 !!! sisiki'
fi

export PS1="\n\[\033[38;5;23m\]░░░░░\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)$(tput smul)\]\[\033[38;5;23m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[48;5;0m\]\h\[$(tput sgr0)$(tput dim)\] \[\033[38;5;125m\]\[$(tput sgr0)$(tput bold)\]\[\033[38;5;132m\]\u\[$(tput sgr0)\]\033[38;5;137m\]╘$?\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;2m\]\W\[$(tput sgr0)$(tput bold)\]\[\033[38;5;28m\] >_ \[$(tput sgr0)\]"

# Extra many types of compressed packages
# Credit: http://nparikh.org/notes/zshrc.txt
# extract() {
#   if [ -f "$1" ]; then
#     case "$1" in
#       *.tar.bz2)  tar -jxvf "$1"                        ;;
#       *.tar.gz)   tar -zxvf "$1"                        ;;
#       *.bz2)      bunzip2 "$1"                          ;;
#       *.dmg)      hdiutil mount "$1"                    ;;
#       *.gz)       gunzip "$1"                           ;;
#       *.tar)      tar -xvf "$1"                         ;;
#       *.tbz2)     tar -jxvf "$1"                        ;;
#       *.tgz)      tar -zxvf "$1"                        ;;
#       *.zip)      unzip "$1"                            ;;
#       *.ZIP)      unzip "$1"                            ;;
#       *.pax)      cat "$1" | pax -r                     ;;
#       *.pax.Z)    uncompress "$1" --stdout | pax -r     ;;
#       *.Z)        uncompress "$1"                       ;;
#       *) echo "'$1' cannot be extracted/mounted via extract()" ;;
#     esac
#   else
#      echo "'$1' is not a valid file to extract"
#   fi
# }

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
