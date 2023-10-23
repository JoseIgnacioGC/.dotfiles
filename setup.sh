# Create basic folders
mkdir ~/Documents ~/Downloads ~/Trash 

# apt - install all packages
sudo apt update && sudo apt upgrade
sudo apt install curl
sudo apt install build-essential
sudo apt install man-db manpages-dev
sudo apt install git-all
sudo apt install zsh
sudo apt install tmux
sudo apt install neovim
sudo apt install bat
mkdir -p ~/.local/bin && ln -vs /usr/bin/batcat ~/.local/bin/bat # debian-based distros - symlink to prevent issues

# git - setup submodules
git submodule init
git submoduel update

# rust - install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# cargo - install packages
cargo install lsd

# ssh key - generate
ssh-keygen -o -f ~/.ssh/id_rsa

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

# oh-my-zsh - install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# tmux - setup plugin manager
gh repo clone tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf # TODO: "tmux readme - Press prefix + I (capital i, as in Install) to fetch the plugin."

# tmux - as default terminal
chsh -s $(which tmux)
