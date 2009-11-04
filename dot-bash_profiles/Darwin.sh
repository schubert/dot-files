if [ -d /tmp/.X11-unix ]; then
  DISPLAY=:0.0
fi

TERM=xterm-color
GIT_BRANCH=""

if [ X$TERM_PROGRAM = X"Apple_Terminal" ]; then
	if [ `id -u` == 0 ]; then
		PS1="\[\e]0;[\u@\h]\a$RED[$WHITE\u$RED@$WHITE\h$RED:$MAGENTA\$(parse_git_branch)$YELLOW\$(parse_git_dirty)$RED]$WHITE "
	else   
		PS1="\[\e]0;[\u@\h]\a$BLUE[$WHITE\u$BLUE@$WHITE\h$BLUE:$MAGENTA\$(parse_git_branch)$YELLOW\$(parse_git_dirty)$BLUE]$WHITE "
	fi
else
	if [ `id -u` == 0 ]; then
		PS1="$RED[$WHITE\u$RED@$WHITE\h$RED:$MAGENTA\$(parse_git_branch)$YELLOW\$(parse_git_dirty)$RED]$WHITE "
	else
		PS1="$BLUE[$WHITE\u$BLUE@$WHITE\h$BLUE:$MAGENTA\$(parse_git_branch)$YELLOW\$(parse_git_dirty)$BLUE]$WHITE "
	fi
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

export PS1 DISPLAY TERM