#! /usr/bin/bash
git clone https://github.com/darknessomi/musicbox.git && cd musicbox
sudo dnf install python-devel #解决缺少python.h问题
sudo python setup.py install && cd .. && sudo rm -rf musicbox

