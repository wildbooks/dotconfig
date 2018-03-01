#! /bin/bash

CMD=dnf

# First install autojump
type autojump
if [ ! $? ]; then #null
  sudo $CMD install autojump
  echo 'source /usr/share/autojump/autojump.bash'>> ~/.bashrc 
  source ~/.bashrc
else
  echo "autojump has installed"
fi
