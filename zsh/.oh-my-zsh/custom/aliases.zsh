# list
alias ls="lsd"
alias la="ls -a --group-directories-first"
alias l="la -lh"
alias lf="la --directory-only (.*|*)(^-/)"
alias lt="la --tree -I .git -I node_modules --depth"
# overrides
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -v"
alias ln="ln -v"
alias mkdir="mkdir -pv"
alias shutdown="wsl.exe --shutdown" # wsl config
# configs
alias nvimc="cd ~/.config/nvim && $EDITOR"
alias zshc="$EDITOR ~/.zshrc"
alias tmuxc="$EDITOR ~/.tmux.conf"
alias gitc="git config --global -e"
# other
alias batc="bat --paging=never"
alias update="sudo apt update && sudo apt -y upgrade"
