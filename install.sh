#!/bin/sh

#DESTINATION=~/
DESTINATION=~/Dropbox/HOME
mkdir -p ${DESTINATION}
rm -rf ${DESTINATION}/.bash_profiles/*

for dotfile in $(find dot-* ! -type d -depth 0); do
  cp -f $dotfile ~/Dropbox/Home/`echo ${dotfile} | sed -e 's@dot-@\.@'`
done

for dotdir in $(find dot-* -type d -depth 0); do
  echo $dotdir
  rm -rf ${DESTINATION}/`echo ${dotdir} | sed -e 's@dot-@\.@'`
  mkdir -p ${DESTINATION}/`echo ${dotdir} | sed -e 's@dot-@\.@'`
  cp -rf $dotdir/* ${DESTINATION}/`echo ${dotdir} | sed -e 's@dot-@\.@'`/
  
done

ln -sf ~/.bash_profile ~/.bashrc
. ~/Dropbox/Scripts/hourly/sync-dropbox-to-home