#! /bin/bash

git clone https://github.com/racaljk/hosts.git

# user config
if [ ! -L /etc/hosts ]; then #软连接文件不存在
    sudo mv /etc/hosts /etc/hosts_back  #back up
    sudo ln -s `pwd`/hosts/hosts /etc/hosts
fi
