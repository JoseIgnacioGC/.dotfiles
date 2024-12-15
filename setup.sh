#!/bin/bash

# local env vars
DOTFILES="$HOME/.dotfiles"
IS_WSL_ENV=0

# functions
is_yes() {
	local yn=0

	if [[ "$1" != [yY]* ]]; then
		yn=1
	fi

	echo "$yn"
}

# pre installation options
echo $'\nBefore the setup. Do you want to...\n'

read -p $'- setup in a wsl environment? (Y/n): ' yn
IS_WSL_ENV=$(is_yes "$yn")

read -p $'- start the setup?            (Y/n): ' yn
[ $(is_yes "$yn") == 0 ] || exit

# create folders
mkdir $HOME/{Documents,Downloads,Trash}
mkdir -p $HOME/Workspace/{projects,forks,lern,scripts}
mkdir -p $HOME/bin $HOME/.local/bin

# ssh key - generate
ssh-keygen -o -f $HOME/.ssh/id_rsa

# apt - install packages
sudo apt update ; sudo apt upgrade
sudo apt -y install curl wget
sudo apt -y install build-essential unzip
sudo apt -y install man-db manpages-dev
sudo apt -y install fzf ripgrep fd-find
sudo apt -y install zsh
sudo apt -y install tmux
# apt - symlink to prevent issues
sudo apt -y install fd-find
ln -vs $(which fdfind) $HOME/.local/bin/fd  # NOTE: only Debian-based distros

sudo apt update ; sudo apt upgrade

# git - setup sub-modules
git submodule init
git submodule update

# gh - install
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \  && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list \  >/dev/null && sudo apt update \  && sudo apt install gh -y
# gh - login
gh auth login

# volta (nodejs version manager) - install & setup
curl https://get.volta.sh | sh
volta install node # lts node & npm

# oh-my-zsh - install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Tmux - setup plugin manager
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
tmux source $HOME/.tmux.conf
# Tmux - as default terminal
chsh -s $(which tmux)

# run all `shell/` scripts
for script in shell/*.sh; do
	[ -e "$script" ] || continue # skip non-existent files

	# TODO: and if the file is named `wsl_only.sh`
	# [ $IS_WSL_ENV == 0 ] || continue

	sh "$script"
done

# last setup scripts
sudo apt update ; sudo apt upgrade

echo "\nRestart the terminal and type inside tmux (ctrl + b + I) to install tmux plugins"
