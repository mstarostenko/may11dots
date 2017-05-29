#
# ~/.bashrc
#
export EDITOR="vim"

# Чтобы не срабатывал freezing терминала, когда нажимаешь ctrl + s
stty -ixon

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Fuzzy Finder scripts
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Colorscheme on ANSI sequences
if [ -f $HOME/gruvbox_256palette.sh ]; then
    . $HOME/gruvbox_256palette.sh
fi

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Prompt
if [ -n "$TMUX" ]; then
    BASH_PROMPT_IN_TMUX=1
    BASH_PROMPT_TMUX_FLAG='\[$(tput sgr0)\]\[\033[48;5;136m\]\[\033[38;5;0m\]  '
else
    BASH_PROMPT_IN_TMUX=0
    BASH_PROMPT_TMUX_FLAG=''
fi

bash_prompt_command() {
    # How many characters of the $PWD should be kept
    local pwdmaxlen=25
    # Indicate that there has been dir truncation
    local trunc_symbol=""
    local dir=${PWD##*/}
    pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))

    local RC_LIGHTMAGENTA=$(echo -e "\033[38;5;131m" )            # magenta
    local RC_MAGENTA=$(echo -e "\033[38;5;132m" )            # magenta
    local RC_DEEPMAGENTA=$(echo -e "\033[38;5;125m" )        # deep magenta
    local RC_BRIGHTYELLOW=$(echo -e "\033[38;5;142m" )       # bright yellow
    local RC_DARK=$(echo -e "\033[38;5;125m" )                # bright yellow

    BASH_PROMPT_PWD_IMPRV_OFFSET="   "
    [ $PWD == $HOME ] && BASH_PROMPT_PWD_IMPRV_OFFSET=" "
    [ $PWD == "/" ] && BASH_PROMPT_PWD_IMPRV_OFFSET=" "

    BASH_PROMPT_PWD_IMPRV_FOLDER_EXT_MARK=" "
    [ $(echo $PWD | grep -E "^/mnt[/]?") ] && BASH_PROMPT_PWD_IMPRV_FOLDER_EXT_MARK="M"
    [ $(echo $PWD | grep -E "^$HOME/Documents[/]?") ] && BASH_PROMPT_PWD_IMPRV_FOLDER_EXT_MARK="d"
    [ $(echo $PWD | grep -E "^$HOME/TEMP[/]?") ] && BASH_PROMPT_PWD_IMPRV_FOLDER_EXT_MARK="T"

    if [ $(echo $PWD | grep -E "^$HOME[/]?") ]
        then
            IN_HOME_DIR=1
            BASH_PROMPT_PWD_IMPRV_PATH_COLOR="$RC_LIGHTMAGENTA"
            BASH_PROMPT_PWD_IMPRV_ICON_COLOR="$RC_MAGENTA"
            BASH_PROMPT_PWD_IMPRV_FOLDER_EXT_COLOR="$RC_DARK"
        else
            IN_HOME_DIR=0
            BASH_PROMPT_PWD_IMPRV_PATH_COLOR="$RC_BRIGHTYELLOW"
            BASH_PROMPT_PWD_IMPRV_ICON_COLOR="$RC_BRIGHTYELLOW"
            BASH_PROMPT_PWD_IMPRV_FOLDER_EXT_COLOR="$RC_BRIGHTYELLOW"
    fi 

    BASH_PROMPT_PWD_IMPRV=${PWD/#$HOME/\~}
    local pwdoffset=$(( ${#BASH_PROMPT_PWD_IMPRV} - pwdmaxlen ))
    if [ ${pwdoffset} -gt "0" ]
    then
        BASH_PROMPT_PWD_IMPRV=${BASH_PROMPT_PWD_IMPRV:$pwdoffset:$pwdmaxlen}
        BASH_PROMPT_PWD_IMPRV=${trunc_symbol}/${BASH_PROMPT_PWD_IMPRV#*/}
    fi
}

bash_prompt() {
    case $TERM in
     xterm*|rxvt*)
         local TITLEBAR='\[\033]0;\u:${BASH_PROMPT_PWD_IMPRV}\007\]'
          ;;
     *)
         local TITLEBAR=""
          ;;
    esac



    #COLORS -------------------------------------------------------------------
    # -------------------------------------------------------------------------

    local NONE="\[\033[0m\]"    # unsets color to term's fg color

    # regular colors
    local RC_MAGENTA="\[\033[38;5;132m\]"            # magenta
    local RC_DEEPMAGENTA="\[\033[38;5;125m\]"        # deep magenta
    local RC_LIGHTYELLOW="\[\033[38;5;137m\]"        # light yellow
    local RC_BRIGHTYELLOW="\[\033[38;5;142m\]"       # bright yellow
    local RC_CONTEXTBLUE="\[\033[38;5;23m\]"         # context blue

    # background colors
    local BGC_GREY="\[\033[48;5;0m\]"

    local UC=$RC_MAGENTA                     # user's color
    [ $UID -eq "0" ] && UC=$RC_DEEPMAGENTA   # root's color

    # -------------------------------------------------------------------------
    # end COLORS --------------------------------------------------------------

    # PS1="$TITLEBAR ${EMK}[${UC}\u${EMK}@${UC}\h ${EMB}\${BASH_PROMPT_PWD_IMPRV}\${WORKDING_DIR_SEQ}\${EMK}]${UC}\\$ ${NONE}"
    # without colors: PS1="[\u@\h \${BASH_PROMPT_PWD_IMPRV}]\\$ "
    # extra backslash in front of \$ to make bash colorize the prompt

    # http://misc.flogisoft.com/bash/tip_colors_and_formatting
    PS1="\033[38;5;237m\]----------------------------------\n`                                                                                 # new line

            `${RC_CONTEXTBLUE}░░░░`                                                          # visual separator
            `\[$(tput sgr0)\] `                                                              # [ ] space
            `\[$(tput sgr0)$(tput smul)\]${RC_CONTEXTBLUE}\t`                                # time
            `\[$(tput sgr0)\] `                                                              # [ ] space
            `\[$(tput sgr0)\]${BGC_GREY}\h`                                                  # hostname
            `\[$(tput sgr0)$(tput dim)\] ${RC_DEEPMAGENTA}`                                 # username icon
            `\[$(tput sgr0)$(tput bold)\]${RC_MAGENTA}\u`                                    # username
            `\[$(tput sgr0)\]${RC_LIGHTYELLOW}╘$?`                                           # exit code of previous command
            ` $BASH_PROMPT_TMUX_FLAG`                                                         # TMUX FLAG
            `\[$(tput sgr0)\]\n`                                                             # [n]ew line

            `\${BASH_PROMPT_PWD_IMPRV_FOLDER_EXT_COLOR}`                                     # pwd folder icon
            `\${BASH_PROMPT_PWD_IMPRV_FOLDER_EXT_MARK}`                                      # pwd folder extension MARK
            `\[$(tput sgr0)\]`                                                               # [x] drop styles
            `\${BASH_PROMPT_PWD_IMPRV_ICON_COLOR} `                                         # pwd folder icon
            `\[$(tput sgr0)\]`                                                               # [x] drop styles
            `\${BASH_PROMPT_PWD_IMPRV_PATH_COLOR}`                                           # pwd_imprvd path
            `\${BASH_PROMPT_PWD_IMPRV}`                                                      # pwd_imprvd path
            `\${BASH_PROMPT_PWD_IMPRV_OFFSET}`                                               # pwd_imprvd path
            `\[$(tput sgr0)\]\[\033[38;5;25m\] `                                          # greeting char
            `\[$(tput sgr0)\]"                                                               # [x] drop styles
}

# init it by setting PROMPT_COMMAND
PROMPT_COMMAND=bash_prompt_command
bash_prompt
unset bash_prompt
