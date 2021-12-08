#!/bin/bash

# Script to change all user directories to their default english paths.
# Used because these folders can sometimes be set as their localized name,
# which is a pain to type in the terminal.
#
# English defaults taken from Pop_OS 21.04

Folders=('Desktop' 'Downloads' 'Templates' 'Public' 'Documents' 'Music' 'Pictures' 'Videos')
Names=('DESKTOP' 'DOWNLOAD' 'TEMPLATES' 'PUBLICSHARE' 'DOCUMENTS' 'MUSIC' 'PICTURES' 'VIDEOS')

currentDir=`pwd`
cd $HOME

# Create english directories, and set as user dirs
for f in ${Folders[@]}; do
  mkdir $f
done

for ((i = 0; i < 8; i++)); do
  xdg-user-dirs-update --set ${Names[i]} $HOME/${Folders[i]}
done

# Copy desktop file on Manjaro
cd $currentDir
if [[ -f ./.directory ]]; then
  cp ./.directory ../Desktop/
fi

echo "User dirs changes, you may now delete the old directories"
