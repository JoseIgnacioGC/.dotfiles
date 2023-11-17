# list
alias ls="lsd --group-directories-first"
alias la="ls -a"
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
# custom pager
alias batc="bat --paging=never"
alias batd="bat --theme=\"Solarized (light)\""
# other
alias lazyvim="NVIM_APPNAME=lazyvim nvim"
alias update="sudo apt update && sudo apt -y upgrade"
alias open=xdg-open
