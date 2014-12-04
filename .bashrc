# add end of the .bashrc

export HISTFILESIZE=10000

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

bind '"\e[A": history-search-backward' 
bind '"\e[B": history-search-forward'

bind '"\C-p": history-search-backward' 
bind '"\C-n": history-search-forward'
