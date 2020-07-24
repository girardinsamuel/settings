#!/bin/bash

# get config files from all locations
# TODO: define loop here with array of files ?
echo "Fetching config files ..."
cp ~/.zshrc config/
cp ~/.bash_profile config/
cp ~/.config/nvim/init.vim config/
cp ~/.gitconfig config/

# get homebrew installed packages
brew list > config/brew_packages.txt

# add and commit files
git add .
git commit -m"Sync config files"

# push to github
git push

echo "Config files synced !"
