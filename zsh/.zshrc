CALCULATE_STARTUP_TIME=0
(( CALCULATE_STARTUP_TIME )) && zmodload zsh/zprof

ZSH_THEME="oxide"

ENABLE_CORRECTION="true"
DISABLE_LS_COLORS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

zstyle ':omz:update' mode reminder

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# TODO: "wsl config - too slow" solution:
# https://github.com/zsh-users/zsh-syntax-highlighting/issues/790
plugins=(
    # zsh-autosuggestions
    zsh-completions

    git
    python
    pip
    npm-run
    gh
    docker
    docker-compose
    volta
    web-search

    # rust
    # zsh-vi-mode # wsl config - too slow
    # zsh-syntax-highlighting # wsl config - too slow
)

source $ZSH/oh-my-zsh.sh

# command for zsh-completions
autoload -U compinit && compinit

# User configuration

# vi key bindings
bindkey -v

# dotfiles autocompletions
setopt globdots

# rust - cargo
# source $HOME/.cargo/env

(( CALCULATE_STARTUP_TIME )) && zprof

# bun completions
[ -s "/home/ignacio/.bun/_bun" ] && source "/home/ignacio/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
