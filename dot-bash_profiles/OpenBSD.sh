if [ $DISPLAY == ":0.0" ]; then
  xset b off
fi

if [ ! -z "$DISPLAY" ]; then
  TERM=xterm-xfree86
else
  TERM=wsvt25
fi

if [ !$IS_ROOT ]; then
	if [ X"`quota -q`" != X"" ]; then  
		echo -n 'Disk Quota Warning: ';echo `quota -q | grep -v uid`
	fi
fi

if [ X"`which colorls`" != X"" ]; then
	alias    ls='colorls -FG'
else
	alias    ls='ls'
fi
alias       df='df -h'
alias     free='vmstat'
alias updatedb='/usr/libexec/locate.updatedb'

export TERM