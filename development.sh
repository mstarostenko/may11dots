tmux has-session -t quakesession
if [ $? != 0 ]
then
    # create session and [0] window
    tmux new-session -s quakesession -n console -d
    # create [1] window
    tmux new-window -n organizer -t quakesession
    # create [2] window
    tmux new-window -n player -t quakesession


    # TODO window variables
    tmux send-keys -t quakesession:0 'cd ~' C-m
    tmux send-keys -t quakesession:0 'clear' C-m

    tmux send-keys -t quakesession:1 'cd ~/Documents/' C-m
    tmux send-keys -t quakesession:1 'vim ideasBacklog.txt' C-m

    tmux send-keys -t quakesession:2 'pulsemixer' C-m


    tmux select-window -t quakesession:0
fi
tmux attach -t quakesession
