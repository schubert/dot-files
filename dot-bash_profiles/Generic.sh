TERM=vt220

if [ ! -z "$DISPLAY" ]; then
	if [ `id -u` == 0 ]; then
		PS1="\[\e]0;[\u@\h]\a$RED[$WHITE\u$RED@$WHITE\h$RED]$WHITE "
	else	
		PS1="\[\e]0;[\u@\h]\a$BLUE[$WHITE\u$BLUE@$WHITE\h$BLUE]$WHITE "
	fi
else
	if [ ! -z $REMOTEHOST ]; then
		if [ ! -z $HOSTDISPLAY ]; then
			DISPLAY=$HOSTDISPLAY
		else
			DISPLAY=$REMOTEHOST:0
		fi
	else
		if [ ! -z "$SSH_CLIENT" ]; then
			DISPLAY=`echo $SSH_CLIENT | cut -f 1 -d \ `:0
		fi
	fi
	if [ `id -u` == 0 ]; then
		PS1="$RED[$WHITE\u$RED@$WHITE\h$RED]$WHITE "
	else
		PS1="$BLUE[$WHITE\u$BLUE@$WHITE\h$BLUE]$WHITE "
	fi
fi

alias reload='source ~/.aliases && source ~/.bash_profile'
alias   du='du -k'
alias stab='strip -x'
alias    e='exit'
alias   su='sudo'
alias  psa='ps auxw'
alias fuck='fortune -o'
alias   pc='ps auxw | grep $USER | wc -l'
