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
echo -e "Update dotconfig\t"
git pull
# update SpaceVim
echo -e "Update SpaceVim\t"
git -C tools/vim/SpaceVim pull
# Uptate Spacemacs
echo -e "Update Spacemacs\t"
git -C tools/emacs/spacemacs pull
git -C tools/emacs/spacemacs-private pull
echo -e "Update hosts\t"
git -C tools/hosts/hosts pull
echo -e "Update tmux\t"
git -C tools/tmux/tmux pull
echo -e "${Red}Update Configs End${Color_off}"
