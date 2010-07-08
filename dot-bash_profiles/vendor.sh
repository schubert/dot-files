if [ !$IS_ROOT ]; then
  touch ~/.z
  touch ~/.z.tmp
fi
BASE=~/.bash_profiles/vendor
. ${BASE}/z/z.sh
. ${BASE}/dropbox/dropbox.sh
#. ${BASE}/ruby-bash-completion/gem
#. ${BASE}/ruby-bash-completion/rake
. ${BASE}/git/git-completion.bash
