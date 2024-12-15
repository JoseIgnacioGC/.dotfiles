#!/bin/bash
# TODO: Setup all WSL stuff here, maybe in another language.

# xdg-open wsl compatibility
curl -o xdg-open https://github.com/cpbotha/xdg-open-wsl/blob/master/xdg_open_wsl/xdg_open_wsl.py
mv -vf xdg-open "${HOME}"/.local/bin/
ln -fsv "${HOME}"/.local/bin/xdg-open "${HOME}"/.local/bin/open

# windows hello PAM module for sudo
wget http://github.com/nullpo-head/WSL-Hello-sudo/releases/latest/download/release.tar.gz
tar xvf release.tar.gz
cd release || exit
./install.sh
cd .. || exit
rm -fr release.tar.gz release
