#!/bin/bash
ln -fsv "${DOTFILES}/git/.gitconfig" "${HOME}"
for file in .zshrc .zprofile .zsh_logout; do
  ln -fsv "${DOTFILES}/.dotfiles/zsh/${file}" "${HOME}"
done
ln -fsv "${DOTFILES}/helix/config.toml" "${HOME}/.config/helix/"
ln -fsv "${DOTFILES}/helix/themes" "${HOME}/.config/helix/"
