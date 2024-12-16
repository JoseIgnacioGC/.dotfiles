# Dotfiles

Welcome to my dotfiles repository! This project was created to streamline the setup
and management of my Debian-based Linux and WSL environment configurations.

## 📄 | About

This configuration uses:
1. [zsh](https://www.zsh.org/) shell & [oh-my-zsh](https://ohmyz.sh/) framework
1. [Tmux](https://github.com/tmux/tmux/wiki) terminal multiplexer
1. [Helix](https://helix-editor.com/) editor

## 🎯 | Target

[Ubuntu](https://ubuntu.com/download/desktop) distro. The auto setup file `setup.sh` only works on Ubuntu.


## ⚙️ | Setup

> [!WARNING]
>
> The setup file has not yet been tested.

Follow these steps to set up the dotfiles on your system:

1. Install git:

   ```bash
   sudo apt -y install git-all
   ```

1. clone the repository:

   ```bash
   git clone https://github.com/JoseIgnacioGC/.dotfiles.git
   ```

1. Navigate to the `.dotfiles` directory:

   ```bash
   cd .dotfiles
   ```

1. Run the setup script:

   ```bash
   bash setup.sh
   ```

   It is recommended to check this script, because it will create
   folders, install packages, configure the packages, symlink the files
   and folders to your machine, and make sure your configurations are applied.

## 🎀 | Customization

### Adding aliases & env variables

For performance reasons, aliases and env variables are defined
in separated files; to add new ones and/or change existing ones,
go to the following files:

```bash
.
└──📁 zsh
    ├──📁 .oh-my-zsh
    │   └──📁 custom
    │       └── aliases.zsh # Aliases should be defined here
    └─ .zprofile # ENV variables should be defined here

```
then reset the shell or source the files you changed:
```bash
# e.g.
source aliases.zsh
```

## 📃 | Todo

- [ ] create an executable to know if it's on darkmode
## Contributions

Contributions are welcome! If you have improvements, bugfixes, or new features
to suggest.


## License

This project is licensed under the MIT License - see the
[LICENSE](https://opensource.org/license/mit/) file for details.
