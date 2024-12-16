#!/bin/bash
# TODO: Setup all WSL stuff here, maybe in another language.

# xdg-open wsl compatibility
# FIX: not found error
curl -o xdg-open https://github.com/cpbotha/xdg-open-wsl/blob/master/xdg_open_wsl/xdg_open_wsl.py
mv -vf xdg-open "${HOME}"/.local/bin/
ln -fsv "${HOME}"/.local/bin/xdg-open "${HOME}"/.local/bin/open

# windows hello PAM module for sudo
# TODO: printf something
wget http://github.com/nullpo-head/WSL-Hello-sudo/releases/latest/download/release.tar.gz
tar xvf release.tar.gz
./release/install.sh
rm -fr release.tar.gz release
