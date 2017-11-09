#!/bin/bash

PWD="$( cd "$( dirname "$0" )" && pwd )"

ln -nfs $PWD/.bashrc $HOME/.bashrc
ln -nfs $PWD/.dircolors $HOME/.dircolors
ln -nfs $PWD/.fonts $HOME/.fonts
ln -nfs $PWD/.gitconfig $HOME/.gitconfig
ln -nfs $PWD/.gitignore_global $HOME/.gitignore_global
ln -nfs $PWD/.inputrc $HOME/.inputrc
ln -nfs $PWD/.tmux.conf $HOME/.tmux.conf
ln -nfs $PWD/.tmux.conf.local $HOME/.tmux.conf.local
ln -nfs $PWD/.vim $HOME/.vim
ln -nfs $PWD/.vimrc $HOME/.vimrc
mkdir $HOME/.config
mkdir $HOME/.config/fish
mkdir $HOME/.config/profanity
ln -nfs $PWD/profrc $HOME/.config/profanity/profrc
# FISH - The Friendly Interactive SHell
ln -nfs $PWD/config.fish $HOME/.config/fish/config.fish
