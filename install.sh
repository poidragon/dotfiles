#!/bin/sh
#
# This installation script should ensure all of the dotfiles from this 
# directory are installed into the home directory, hopefully without
# destroying any existing files.
#
# Currently all it does is blindly copy everything over
cp ./.bashrc ~/
cp ./.bash_aliases ~/
cp ./.gitconfig ~/
cp ./.vimrc ~/


# Install vundle, and all plugins from .vimrc
if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
	echo "Installing vundle..."
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	echo "Installing vundle plugins..."
	vim +PluginInstall +qall
else
	echo "Vundle already installed..."
fi
