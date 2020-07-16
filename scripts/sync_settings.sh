#!/bin/bash

# get config files from all locations
echo "Fetching config files ..."
cp ~/.zshrc config/.zshrc
 
# add and commit files
git add .
git commit -m"Sync config files"

# push to github
git push

echo "Config files synced !"
