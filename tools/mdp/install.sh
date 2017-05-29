#! /usr/bin/bash

git clone https://github.com/visit1985/mdp.git
cd mdp
make &&sudo make install 
mdp sample.md
