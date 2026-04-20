#!/bin/bash
#set -x

# Only for the first time, Cant use it for update.
# TO DO
  # 1. Make it for update mpv conf.

# ENV
gitrepo=https://github.com/mysh264/mpv-config.git
mpvconf=$HOME/.config/mpv
gitmpvconf=$mpvconf/mpv-config

# Make MPV config Folder.

if [ -d $mpvconf ]; then
    echo "MPV Config directory exists."
    cd $mpvconf
    else
    echo "MPV Config directory not exists."
    echo "Making MPV Config diretory."
        mkdir $mpvconf
    echo "DONE"
    cd $mpvconf
    fi

############################################

git clone $gitrepo ;
echo "Git clone Done" ;
mv -f $gitmpvconf/{*,.*} . ;
echo "Move all files from $gitmpvconf to $mpvconf DONE" ;
rm -rvf $gitmpvconf ;
echo "Remove $gitmpvconf DONE" ;
cd ;
