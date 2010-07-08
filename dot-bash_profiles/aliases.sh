alias reload='source ~/.aliases && source ~/.bash_profile'
alias   du='du -k'
alias stab='strip -x'
alias    e='exit'
alias   su='sudo'
alias  psa='ps auxw'
alias fuck='fortune -o'
alias   pc='ps auxw | grep $USER | wc -l'
alias dmesg='sudo dmesg'
alias svnst='svn st --ignore-externals'
alias gr='git reset --hard HEAD'
alias st='git status'
alias master='git checkout master'
alias original='git co original'
alias branch='git co branch'
alias pull='git pull'
alias push='git push'
alias rc='rake commit'
alias mergemaster='git merge --no-commit --summary origin master'
alias ql='qlmanage -p 2>/dev/null'
alias memhog='top -o vsize'
alias cpuhog='top -o cpu'

alias maze='emacs -batch -l dunnet'

pman () {
    man -t "${1}" | open -f -a /Applications/Preview.app
}

tman () {
  MANWIDTH=160 MANPAGER='col -bx' man $@ | mate
}

# Quit an OS X application from the command line
quit () {
    for app in $*; do
        osascript -e 'quit app "'$app'"'
    done
}

relaunch () {
    for app in $*; do
        osascript -e 'quit app "'$app'"';
        sleep 2;
        open -a $app
    done
}