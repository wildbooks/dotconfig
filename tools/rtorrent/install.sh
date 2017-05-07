#! /usr/bin/bash

CMD=dnf
HOME=/home/`whoami`

# First install rtorrent 
sudo $CMD install rtorrent

# user config
ln -s `pwd`/rtorrent.rc  ~/.rtorrent.rc

# root config
sudo ln -s `pwd`/rtorrent.rc  /root/.rtorrent.rc

mkdir ~/Downloads/session
