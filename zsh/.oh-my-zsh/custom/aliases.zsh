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
alias zshc="cd $DOTFILES && $EDITOR ~/.zshrc"
alias tmuxc="cd $DOTFILES && $EDITOR $DOTFILES/tmux/.tmux.conf"
alias gitc="git config --global -e"
# other
was_updated() {
  # $1: [package], $2: update | upgrade | [other]
  echo -e "\n$1 \033[32m$2 finished\033[0m\n"
}

alias update="sudo apt -y update ;
was_updated apt update
sudo apt -y upgrade ;
was_updated apt upgrade ;
echo -e "\n remember to use update-all occasionally\n"
"

alias update-all="update ;
rustup update ;
was_updated rustup update ;
volta install node@latest npm@latest ;
was_updated 'node & volta' update ;
bun upgrade ;
was_updated bun upgrade ;
"

