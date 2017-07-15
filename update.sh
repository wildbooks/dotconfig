# /usr/bin/bash

# Reset
Color_off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'              # Black黑
Red='\033[0;31m'                # Red
Green='\033[0;32m'              # Green绿
Yellow='\033[0;33m'             # Yellow黄
Blue='\033[0;34m'               # Blue蓝色
Purple='\033[0;35m'             # Purple紫色
SkyBlue='\033[0;36m'            # SkyBlue天蓝色
White='\033[0;37m'              # White白色

echo -e "${Red}Update Configs Begin${Color_off}"
# update dotconfig
git pull
# update SpaceVim
git -C tools/vim/SpaceVim pull
# Uptate Spacemacs
git -C tools/emacs/spacemacs pull
git -C tools/emacs/spacemacs-private pull
git -C tools/hosts/hosts pull
git -C tools/tmux/tmux pull
echo -e "${Red}Update Configs End${Color_off}"