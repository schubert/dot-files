PATH=/opt/local/bin:/bin:/sbin:/usr/bin:/usr/sbin # Reset PATH
PATH_LIST="${HOME}/bin ${HOME}/Scripts ${HOME}/Binaries /usr/bin /usr/sbin /opt/local/libexec/git-core /usr/X11R6/bin /usr/games /usr/local/games /usr/local/opt/bin /usr/local/opt/sbin /usr/local/opt/games /usr/ucb /sw/bin /sw/sbin /Library/PostgreSQL8/bin /usr/local/mysql/bin /usr/local/git/bin /opt/local/bin /opt/local/sbin /usr/local/bin /usr/local/sbin"
for i in $PATH_LIST; do
	if [ -d $i ]; then
		PATH=${PATH}:$i
	fi
done
PATH=`echo $PATH | sed -e 's@\.:@@g' | sed -e 's@:\.@@g'` # Clear dangerous PATH values
export PATH