# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# exports - PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin # go
export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH # tmux plugin - session manager

# exports - paths
export DOTFILES="$HOME/.dotfiles"
export BROWSER="/mnt/c/Program\ Files/BraveSoftware/Brave-Browser/Application/brave.exe" # wsl config

# exports - zsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$DOTFILES/zsh/.oh-my-zsh/custom"

# exports - others
export EDITOR="nvim"

# exports - volta package manager
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
