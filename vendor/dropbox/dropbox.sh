if [ ! -d ~/.bash_profiles ]; then
  ln -sf ~/Dropbox/.bash_profiles ~/.bash_profiles
fi

alias reinstall='cd ~/work/dot-files && ./install.sh && source ~/.aliases && source ~/.bash_profile'
