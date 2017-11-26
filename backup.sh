#!/bin/bash

readonly PROGDIR="$( cd "$(dirname "$0")" ; pwd -P )"

echo "ZSH...."
cp -v $HOME/.zshrc ${PROGDIR}/zshrc
cp -vR $HOME/.oh-my-zsh/custom ${PROGDIR}/custom

echo "GIT...."
cp -v $HOME/.gitconfig ${PROGDIR}/gitconfig
cp -v $HOME/.gitignore_global ${PROGDIR}/gitignore_global

echo "VIM...."
cp -v $HOME/.vimrc ${PROGDIR}/vimrc
cp -vR $HOME/.vim ${PROGDIR}/vim

echo "BREW..."
brew list --versions > brews


# EOF
