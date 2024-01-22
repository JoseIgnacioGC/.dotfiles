#!/bin/sh
ln -fsv $DOTFILES/git/.gitconfig $HOME/
ln -fsv $DOTFILES/zsh/{.zshrc,.zprofile,.zsh_logout} $HOME/
ln -fsv $DOTFILES/tmux/.tmux.conf $HOME/

# nvim distros
ln -fsv $DOTFILES/nvim/lazyvim $HOME/.config/nvim
