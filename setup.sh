# Create basic folders
mkdir ~/Documents ~/Downloads ~/Trash 

# Install all packages
sudo apt update && sudo apt upgrade
sudo apt install curl
sudo apt install git-all
sudo apt install zsh
sudo apt install tmux
sudo apt install neovim

# Generate ssh key
ssh-keygen -o -f ~/.ssh/id_rsa

# Install gh cli
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# Login gh cli
gh auth login

# Tmux as default terminal
chsh -s $(which tmux)
