printf '\033]11;[90]#012e39\007'

SESSION_NAME="quakesession"
WINDOW_0_NAME=""
WINDOW_1_NAME=" org"
WINDOW_2_NAME=" play"

tmux has-session -t "${SESSION_NAME}"

if [ $? != 0 ]; then
    # create session && initial window[0]
    tmux new-session -s "${SESSION_NAME}" -n "${WINDOW_0_NAME}" -d

    # create [1] window
    tmux new-window -n "${WINDOW_1_NAME}" -t "${SESSION_NAME}"
    tmux send-keys -t "${SESSION_NAME}:1" 'vim ~/Documents/may11docs' C-m

    # create [2] window
    tmux new-window -n "${WINDOW_2_NAME}" -t "${SESSION_NAME}"
    tmux send-keys -t "${SESSION_NAME}:2" 'pulsemixer' C-m

    tmux select-window -t "${SESSION_NAME}:0"
fi

tmux attach -t "${SESSION_NAME}"
