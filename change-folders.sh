#!/bin/bash
cd $HOME
mkdir Desktop Downloads Templates Public Documents Music Pictures Videos

xdg-user-dirs-update --set DESKTOP $HOME/Desktop
xdg-user-dirs-update --set DOWNLOAD $HOME/Downloads
xdg-user-dirs-update --set TEMPLATES $HOME/Templates
xdg-user-dirs-update --set PUBLICSHARE $HOME/Public
xdg-user-dirs-update --set DOCUMENTS $HOME/Documents
xdg-user-dirs-update --set MUSIC $HOME/Music
xdg-user-dirs-update --set PICTURES $HOME/Pictures
xdg-user-dirs-update --set VIDEOS $HOME/Videos

echo "Done"
