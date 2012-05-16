# Dotfiles

## Overview

I use zsh as my shell so my configuration will reflect that. I use the following:

*[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
*[rbenv](https://github.com/sstephenson/rbenv)
*[Sublime Text 2](http://www.sublimetext.com/2)
*[Vim](http://www.vim.org/)

## Get the Goods

	cd; git clone git@github.com:caiges/dotfiles.git; cd dotfiles; git submodule init; git submodule update; cd;

### A Ruby Friendly ZSH Config

	ln ~/dotfiles/.zshrc .zshrc

	source ~/.zshrc

### Sublime Alias

You can use the following in your shell to fire up Sublime:

	sbl yourproject/file

### Vim Config

	ln ~/dotfiles/.vim .vim

	ln ~/dotfiles/.vimrc .vimrc