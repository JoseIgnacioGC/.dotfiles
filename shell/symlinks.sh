#!/bin/bash
ln -fsv "${DOTFILES}/git/.gitconfig" "${HOME}"
ln -fsv "${DOTFILES}/zsh/{.zshrc,.zprofile,.zsh_logout}" "${HOME}"
ln -fsv "${DOTFILES}/tmux/.tmux.conf" "${HOME}"
ln -fsv "${DOTFILES}/helix/config.toml" "${HOME}/.config/helix"
