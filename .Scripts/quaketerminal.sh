isScratchpadWindowExist=$(xwininfo -tree -root | grep 'quakelike')
if [ ! $isScratchpadWindowExist ]; then
    i3-msg 'exec urxvt -name quakelike -hold -e ~/.Scripts/quakesession.sh'
fi

    i3-msg '[instance="quakelike"] scratchpad show'



