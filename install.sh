#!/bin/bash

PWD="$( cd "$( dirname "$0" )" && pwd )"

# Commented stuff is commented because it is related to an old VIM setup.
# With SpaceVim or Spacemacs there are much better options for an editor as well
# as better controls with built-in :eshell (Spacemacs) or :terminal (SpaceVim).
# If you have opted to not use one of these editors, these commented files
# should be useful.
ln -nfs $PWD/.aliases $HOME/.aliases
# ln -nfs $PWD/.bashrc $HOME/.bashrc
# ln -nfs $PWD/.dircolors $HOME/.dircolors
ln -nfs $PWD/.exports $HOME/.exports
# ln -nfs $PWD/.fonts $HOME/.fonts
ln -nfs $PWD/.gitconfig $HOME/.gitconfig
ln -nfs $PWD/.gitignore_global $HOME/.gitignore_global
# ln -nfs $PWD/.inputrc $HOME/.inputrc
ln -nfs $PWD/.tmux.conf $HOME/.tmux.conf
ln -nfs $PWD/.tmux.conf.local $HOME/.tmux.conf.local
# ln -nfs $PWD/.vim $HOME/.vim
# ln -nfs $PWD/.vimrc $HOME/.vimrc
ln -nfs $PWD/.zshrc $HOME/.zshrc
