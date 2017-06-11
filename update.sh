# /usr/bin/bash

# update dotconfig
git pull
# update SpaceVim
git -C tools/vim/SpaceVim pull
# Uptate Spacemacs
git -C tools/emacs/spacemacs pull
git -C tools/emacs/spacemacs-private pull
