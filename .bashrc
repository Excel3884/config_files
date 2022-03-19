export PS1="\[\e[01;34m\][\[\e[m\]\[\e[01;32m\]\u\[\e[m\]\[\e[01;36m\]@\[\e[m\]\[\e[01;32m\]Mint\[\e[m\] \[\e[01;36m\]\W\[\e[m\]\[\e[01;34m\]]\[\e[m\]\\$ "

#alias for ranger
alias ra='ranger'

#aliases for homeworks
alias pp='cd ~/Desktop/Lessons/Parallel\ Programming/ergasia_4'
alias ns='cd ~/Desktop/Lessons/Network\ Security'
alias on='cd ~/Desktop/Lessons/Optical\ Networks'
alias kp='keepassxc-cli'

#alias for termbin
alias tb="nc termbin.com 9999"

#add cargo bins to PATH
export PATH="/home/"$USER"/.cargo/bin:$PATH"

#alias for university vpn
alias connectuop='sudo openvpn --config ~/Documents/vpn_config/UPatras.ovpn'


# use ibus
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus

# Pretty-print man(1) pages.
# export LESS_TERMCAP_mb=$'\E[1;31m'
# export LESS_TERMCAP_md=$'\E[1;31m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[1;33m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[1;32m'

# vi key bindings
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'
