#!/bin/sh
mkdir -p ~/Dropbox/Home
mkdir -p ~/Dropbox/Home/.bash_profiles
rm -rf ~/Dropbox/Home/.bash_profiles/*
cp -f dot-bash_profile ~/Dropbox/Home/.bash_profile
cp -rf dot-bash_profiles/* ~/Dropbox/Home/.bash_profiles/
cp -rp vendor ~/Dropbox/Home/.bash_profiles/vendor
touch ~/.z
touch ~/.z.tmp

ln -sf ~/.bash_profile ~/.bashrc
. ~/Dropbox/Scripts/hourly/sync-dropbox-to-home