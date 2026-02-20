# vi key bindings
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# alias for pass manager
alias kp='keepassxc-cli'

# alias for termbin
alias tb='nc termbin.com 9999'

alias ra='ranger'
# Make Sure Your Shell Sources the SSH Agent Info
export SSH_AUTH_SOCK=$(find /tmp -type s -name agent.\* 2>/dev/null | head -n 1)

export PATH="$HOME/.cargo/bin:$PATH"

# Nord Theme Static Colors
PS1='\[\e[1;31m\][\[\e[1;32m\]\u@\h \[\e[1;34m\]\W \[\e[1;31m\]]\[\e[1;36m\]\$ \[\e[0m\]'

export MANPAGER="vim -M +MANPAGER -"

# setup environment variable for vivado
# export XILINXD_LICENSE_FILE=27017@xilinx.licenties.uva.nl

export TERM=xterm-256color
alias weather='curl wttr.in'

# convert jpg to png
alias convert_png='find . -name "*.jpg" -exec mogrify -format png {} \;'

# youtube-dl alias
mp3 () {
    yt-dlp --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '%(title)s.%(ext)s' "$1"
}

mp3p () {
    yt-dlp --ignore-errors --sleep-interval 30 -i -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "$1"
}

dlv () {
    yt-dlp --ignore-errors -o '%(title)s.%(ext)s' "$1"
}

dlp () {
    yt-dlp --yes-playlist --ignore-errors --sleep-interval 30 -o '%(playlist)s/%(title)s.%(ext)s' "$1"
}

export PATH="$HOME/.config/emacs/bin:$PATH"

eval $(keychain --eval --quiet 2>/dev/null)
