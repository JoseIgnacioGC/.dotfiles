#!/bin/bash

# set -o errexit
# set -o nounset
# set -o pipefail

# TODO:
# - printf with color to show all sections in the setup (like the update function on aliases.zsh)
# - the script should can be run multiple times
# - helix, change color if is in dark mode

# global vars
export DOTFILES="${HOME}/.dotfiles"

# local vars
readonly true=0
readonly false=1

is_a_wsl_env=${false}

# pre installation options
printf "\nBefore the setup. Do you want to...\n\n"

read -p $'- setup in a wsl environment? (Y/n): ' user_input
is_a_wsl_env=$([[ "$user_input" == [yY]* ]] && echo ${true} || echo ${false})

read -p $'- start the setup?            (Y/n): ' user_input
[[ "$user_input" == [yY]* ]] || exit

# create folders
mkdir -p "${HOME}"/{Documents,Downloads,Trash}
mkdir -p "${HOME}"/Workspace/{projects,forks,lern,scripts}
mkdir -p "${HOME}"/bin "${HOME}"/.local/bin

# ssh key - generate
printf "\nssh-keygen setup:\n\n"
# ssh-keygen -o -f "${HOME}"/.ssh/id_rsa

printf "\nssh-keygen finished\n\n"

# apt - install packages
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install curl wget
sudo apt -y install build-essential unzip
sudo apt -y install man-db manpages-dev
sudo apt -y install fzf ripgrep
sudo apt -y install zsh
sudo apt -y install lsd
sudo apt -y install tmux
sudo apt -y install neovim
sudo apt -y install python3
# apt - symlink to prevent issues
sudo apt -y install fd-find
# ln -vs "$(which fdfind)" "${HOME}"/.local/bin/fd # NOTE: only Debian-based distros
# apt - insetall helix
sudo add-apt-repository -y ppa:maveonair/helix-editor
sudo apt -y update
sudo apt -y install helix
# apt - update
sudo apt -y update
sudo apt -y upgrade

# gh - install
printf "\ngh cli installation:\n\n"
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
        && out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
        && cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
sudo apt -y update
sudo apt -y install gh
# gh - login
# Todo: check auth status
# while ! gh auth login; do
#	echo "GitHub authentication failed. Please try again."
#	sleep 2
# done

# git - setup sub-modules
git submodule init
git submodule update

# volta (nodejs version manager) - install & setup
curl https://get.volta.sh | sh
volta install node # lts node & npm

# oh-my-zsh - install
# ERROR: the script ends here
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Tmux - setup plugin manager
git clone https://github.com/tmux-plugins/tpm "${HOME}"/.tmux/plugins/tpm
tmux start-server
tmux source "${HOME}"/.tmux.conf
"${HOME}/.tmux/plugins/tpm/scripts/install_plugins.sh"
# Tmux - as default terminal
chsh -s "$(which tmux)"

# run all `shell/` scripts
for script in shell/*.sh; do
	[ -e "$script" ] || continue # skip non-existent files

	if [ "${is_a_wsl_env}" == "${false}" ] && [ "$(basename "$script")" == "wsl_only.sh" ]; then
		continue
	fi

	sh "$script"
done


sudo apt -y update
sudo apt -y upgrade

tmux new \; run 'printf "setup finished, enjoy!"'

