#!/bin/bash

PWD="$( cd "$( dirname "$0" )" && pwd )"

# Commented stuff is commented because it is related to an old VIM setup.
# With SpaceVim or Spacemacs there are much better options for an editor as well
# as better controls with built-in :eshell (Spacemacs) or :terminal (SpaceVim).
# If you have opted to not use one of these editors, these commented files
# should be useful.

# CURRENT SETUP IS FISH - TMUX - GIT - EMACS
# UNCOMMENT STUFF TO USE OTHER STUFF
mkdir $HOME/.config
mkdir $HOME/.config/fish
# mkdir $HOME/.config/profanity

# BASH
# ln -nfs $PWD/.bashrc $HOME/.bashrc
# ln -nfs $PWD/.dircolors $HOME/.dircolors

# Universal for all shells
ln -nfs $PWD/.aliases $HOME/.aliases
ln -nfs $PWD/.exports $HOME/.exports
# ln -nfs $PWD/.fonts $HOME/.fonts

# GIT
ln -nfs $PWD/.gitconfig $HOME/.gitconfig
ln -nfs $PWD/.gitignore_global $HOME/.gitignore_global

# ln -nfs $PWD/.inputrc $HOME/.inputrc

# TMUX - Terminal Multiplexer
ln -nfs $PWD/.tmux.conf $HOME/.tmux.conf
ln -nfs $PWD/.tmux.conf.local $HOME/.tmux.conf.local

# Profanity - An Irssi clone for Jabber/XMPP
# ln -nfs $PWD/profrc $HOME/.config/profanity/profrc

# FISH - The Friendly Interactive SHell
ln -nfs $PWD/config.fish $HOME/.config/fish/config.fish

# VIM - Vi IMproved
# ln -nfs $PWD/.vim $HOME/.vim
# ln -nfs $PWD/.vimrc $HOME/.vimrc

# ZSHRC
# ln -nfs $PWD/.zshrc $HOME/.zshrc
