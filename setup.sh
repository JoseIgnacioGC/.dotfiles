# Create basic folders
mkdir ~/Documents ~/Downloads ~/Trash 

# ssh key - generate
ssh-keygen -o -f ~/.ssh/id_rsa

# apt - install packages
sudo apt update && sudo apt upgrade
sudo apt -y install curl
sudo apt -y install build-essential
sudo apt -y install man-db manpages-dev
sudo apt -y install fzf
sudo apt -y install zoxide
sudo apt -y install ripgrep
sudo apt -y install unzip
sudo apt -y install wget
sudo apt -y install fd-find
sudo apt -y install git-all
sudo apt -y install zsh
sudo apt -y install tmux
sudo apt -y install neovim
sudo apt -y install bat
mkdir -p ~/.local/bin && ln -vs /usr/bin/batcat ~/.local/bin/bat # debian-based distros - symlink to prevent issues
# apt - install pip packages
sudo apt -y install python3.11-venv
sudo apt -y install python3-pip
sudo apt -y install python3-mercurial

# TODO: git - setup submodules
git submodule init
git submoduel update

# pip - install packages
pip install mercurial

# rust - install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# cargo - install packages
cargo install lsd
cargo install tree-sitter-cli

# gh - install
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
# gh - login
gh auth login

# volta - install & setup
curl https://get.volta.sh | bash
volta install node # lts node & npm

# npm - install packages
npm i -g neovim

# oh-my-zsh - install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# nvim - setup NvChad
gh repo clone NvChad/NvChad ~/.config/nvim -- --branch "v3.0"

# tmux - setup plugin manager
gh repo clone tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf # TODO: "tmux readme - Press prefix + I (capital i, as in Install) to fetch the plugin."
# tmux - as default terminal
chsh -s $(which tmux)
