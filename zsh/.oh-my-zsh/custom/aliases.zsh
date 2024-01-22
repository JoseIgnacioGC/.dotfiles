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
# configs
alias dotc="cd $DOTFILES && $EDITOR"
alias nvimc="cd $DOTFILES && $EDITOR ~/.config/nvim"
alias zshc="cd $DOTFILES && $EDITOR ~/.zshrc"
alias tmuxc="cd $DOTFILES && $EDITOR $DOTFILES/tmux/.tmux.conf"
alias gitc="git config --global -e"
# custom pager
alias batc="bat --paging=never"
alias batd="bat --theme=\"GitHub\""
# other
alias update="sudo apt -y update ; echo \"\napt update finished.\n\" ; sudo apt -y upgrade; echo \"\napt upgrade finished.\""
