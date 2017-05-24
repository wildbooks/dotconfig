#! /usr/bin/bash

# backup hosts
#sudo mv /etc/hosts /etc/hosts_back

git clone https://github.com/racaljk/hosts.git
sudo ln -s `pwd`/hosts/hosts /etc/hosts
