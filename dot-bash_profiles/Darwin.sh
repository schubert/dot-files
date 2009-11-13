if [ -d /tmp/.X11-unix ]; then
  DISPLAY=:0.0
fi

TERM=xterm-color

if [ X$TERM_PROGRAM = X"Apple_Terminal" ]; then
	GUI_TERM=true
fi

EDITOR="mate -w"
VISUAL=$EDITOR
export EDITOR VISUAL

export CLICOLOR=true
export LSCOLORS=gxfxcxdxbxegedabagacad
export LC_CTYPE=en_US.UTF-8
alias 	 ls='ls -FGp'
alias    df='df -h'
alias    du='du -h'
alias updatedb='/usr/libexec/locate.updatedb'
alias dirc='chmod 0700 Dropbox/.dircproxyrc; dircproxy'

export DISPLAY TERM