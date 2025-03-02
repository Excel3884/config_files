# vi key bindings
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# alias for pass manager
alias kp='keepassxc-cli'

# alias for termbin
alias tb='nc termbin.com 9999'

alias p4='cd ~/Documents/p4_exercises'
alias ra='ranger'
# Make Sure Your Shell Sources the SSH Agent Info
export SSH_AUTH_SOCK=$(find /tmp -type s -name agent.\* 2>/dev/null | head -n 1)

export PATH="$HOME/.cargo/bin:$PATH"

# Nord Theme Static Colors
PS1='\[\e[1;31m\][\[\e[1;32m\]\u@\h \[\e[1;34m\]\W \[\e[1;31m\]]\[\e[1;36m\]\$ \[\e[0m\]'

export MANPAGER="vim -M +MANPAGER -"
