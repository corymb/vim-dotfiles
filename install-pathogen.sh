#!/bin/sh
cd ~/.vim
git clone https://github.com/tpope/vim-pathogen.git pathogen
echo "Installing Pathogen..."
mkdir autoload
mv pathogen/autoload/pathogen.vim autoload/
echo "Cleaning up..."
rm -rf pathogen
echo "Done"
