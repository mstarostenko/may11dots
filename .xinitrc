#!/bin/bash

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

setxkbmap -layout us,ru -variant 'dvp,' ,winkeys -option grp:shifts_toggle,caps:escape,grp_led:scroll,terminate:ctrl_alt_bksp,compose:ralt

xset r rate 200 50
xset b off
xrdb $HOME/.Xresources





(
    if [[ -f ~/.wallpapers/screen_bg.jpg ]]; then
        feh --bg-scal ~/.wallpapers/screen_bg.jpg
    fi
) &

exec i3
