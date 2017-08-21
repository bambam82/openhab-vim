#!/bin/bash

## Openhab-vim
if [[ ! -d $HOME/git/openhab-vim ]] ; then
   git clone git@github.com:bambam82/openhab-vim.git $HOME/git/openhab-vim
fi
if [[ -e $HOME/.vim/syntax/openhab.vim ]]; then
   rm $HOME/.vim/syntax/openhab.vim
fi
ln -sf $HOME/git/openhab-vim/syntax/openhab.vim $HOME/.vim/syntax/openhab.vim
if [[ -e $HOME/.vim/ftdetect/openhab.vim ]]; then
   rm $HOME/.vim/ftdetect/openhab.vim
fi
ln -sf $HOME/git/openhab-vim/ftdetect/openhab.vim $HOME/.vim/ftdetect/openhab.vim

