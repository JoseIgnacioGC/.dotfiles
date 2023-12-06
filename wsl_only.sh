# xdg-open
curl -o xdg-open https://github.com/cpbotha/xdg-open-wsl/blob/master/xdg_open_wsl/xdg_open_wsl.py
mv -vf xdg-open $HOME/.local/bin/
ln -fsv $HOME/.local/bin/xdg-open $HOME/.local/bin/open
