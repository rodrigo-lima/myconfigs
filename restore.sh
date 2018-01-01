#!/bin/bash

readonly PROGDIR="$( cd "$(dirname "$0")" ; pwd -P )"

echo "MINIMAL RESTORE"
echo "ZSH...."
cp -v ${PROGDIR}/zshrc $HOME/.zshrc
cp -vR ${PROGDIR}/custom $HOME/.oh-my-zsh/

echo "GIT...."
cp -v ${PROGDIR}/gitconfig $HOME/.gitconfig
cp -v ${PROGDIR}/gitignore_global $HOME/.gitignore_global

echo "VIM...."
cp -v  ${PROGDIR}/vimrc $HOME/.vimrc
mkdir -p $HOME/.vim/autoload
cp -vR ${PROGDIR}/vim/autoload $HOME/.vim/autoload
mkdir -p $HOME/.vim/colors
cp -vR ${PROGDIR}/vim/colors $HOME/.vim/colors
mkdir -p $HOME/.vim/plugged
cp -vR ${PROGDIR}/vim/plugged $HOME/.vim/plugged

# echo "BREW..."
# brew list --versions > brews

# EOF
