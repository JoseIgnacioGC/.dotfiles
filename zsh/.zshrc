# TODO: create a readme (where are the aliases, exports, etc.)
CALCULATE_STARTUP_TIME=0
(( CALCULATE_STARTUP_TIME )) && zmodload zsh/zprof

ZSH_THEME="refined"

ENABLE_CORRECTION="true"
# DISABLE_LS_COLORS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

zstyle ':omz:update' mode reminder

# TODO: "wsl config - too slow" solution:
# https://github.com/zsh-users/zsh-syntax-highlighting/issues/790
plugins=(
    # zsh-autosuggestions
    # zsh-completions

    git
    rust
    npm-run
    gh
    docker

    # zsh-vi-mode # wsl config - too slow
    # zsh-syntax-highlighting # wsl config - too slow
)

source $ZSH/oh-my-zsh.sh

# User configuration

# command for zsh-completions
autoload -U compinit && compinit

# vi key bindings
bindkey -v

# dotfiles autocompletions
setopt globdots

# rust - cargo
source $HOME/.cargo/env

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

(( CALCULATE_STARTUP_TIME )) && zprof
