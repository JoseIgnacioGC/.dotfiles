# local env vars
DOTFILES="$HOME/.dotfiles"

# create folders
mkdir $HOME/{Documents,Downloads,Trash}
mkdir -p $HOME/Workspace/{projects,forks,lern}
mkdir -p $HOME/bin $HOME/.local/bin

# ssh key - generate
ssh-keygen -o -f $HOME/.ssh/id_rsa

# apt - install packages
sudo apt update && sudo apt upgrade
sudo apt -y install curl wget
sudo apt -y install build-essential unzip
sudo apt -y install man-db manpages-dev
sudo apt -y install fzf ripgrep fd-find
sudo apt -y install git-all
sudo apt -y install zoxide
sudo apt -y install zsh
sudo apt -y install tmux
sudo apt -y install neovim
# apt - symlink to prevent issues
sudo apt -y install fd-find
ln -vs $(which fdfind) $HOME/.local/bin/fd # only debian-based distros
sudo apt -y install bat
ln -vs $(which batcat) $HOME/.local/bin/bat # only debian-based distros
# apt - install pip packages
sudo apt -y install python3.11-venv
sudo apt -y install python3-pip
sudo apt -y install python3-mercurial

# git - setup submodules
git submodule init
git submodule update

# rust - install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# cargo - install packages
cargo install lsd
cargo install tree-sitter-cli

# gh - install
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \  && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list \  >/dev/null && sudo apt update \  && sudo apt install gh -y
# gh - login
gh auth login

# volta - install & setup
curl https://get.volta.sh | sh
volta install node # lts node & npm

# npm - install packages
npm i -g neovim

# oh-my-zsh - install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# nvim - setup NvChad
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim --depth 1 && nvim

# tmux - setup plugin manager
gh repo clone tmux-plugins/tpm $HOME/.tmux/plugins/tpm
tmux source $HOME/.tmux.conf
# tmux - as default terminal
chsh -s $(which tmux)

# TODO: xdg_open_wsl install instruccions for wsl environment

# run scripts
sh ./remove.sh
sh ./symlink.sh

# last setup scripts
sudo apt update && sudo apt upgrade

echo "Restart the terminal and type inside tmux (ctrl + b + I) to install tmux plugins"
