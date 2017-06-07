#!/bin/bash

pulseaudio --start

wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer.tar.gz
tar -xvzf packer.tar.gz
cd packer
makepkg --noconfirm -si
cd ..
rm -rf packer/
rm packer.tar.gz

packer --noconfirm -S cli-visualizer neomutt i3-gaps ttf-font-awesome vim-pathogen vim-live-latex-preview projectm-pulseaudio taffy neofetch i3lock tamzen-font-git speedometer nodejs-markdown-pdf

wget http://lukesmith.xyz/longterm/lukerice.tar.gz
tar -xvzf lukerice.tar.gz
rsync -va --delete-after lukerice/ ~

echo "Congratulations. Installation complete."
echo ""
echo "Now enter \"startx\" to enter the desktop if you are in a tty."
echo ""
echo "If you are using a login manager, you should be able to log off and log back in in i3 as this user for the same effect."
