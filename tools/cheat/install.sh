#! /usr/bin/bash

CMD=dnf
# Install Python and Pip
sudo $CMD install python python-pip

# Install git

# Install python依赖包
sudo pip install docopt pygments

# Clone cheat
 git clone https://github.com/chrisallenlane/cheat.git

 echo "export EDITOR=/usr/bin/nvim" >> ~/.bashrc
 echo "export DEFAULT_CHEAT_DIR=`pwd`/cheatsheets" >> ~/.bashrc
 source ~/.bashrc

 cd cheat
 sudo python setup.py install

rm -rf ../cheat
