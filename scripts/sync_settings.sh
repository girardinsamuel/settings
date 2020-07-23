#!/bin/bash

# get config files from all locations
# TODO: define loop here with array of files ?
echo "Fetching config files ..."
cp ~/.zshrc config/
cp ~/.bash_profile config/
cp ~/.nvim/init.vim config/

# add and commit files
git add .
git commit -m"Sync config files"

# push to github
git push

echo "Config files synced !"
