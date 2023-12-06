# Dotfiles

Welcome to my dotfiles repository! This project was created to streamline the setup
and management of my Debian-based Linux and WSL environment configurations.

## About

To learn more about each configuration go to a folder and read its README file.
The dotfiles in this repository are carefully curated to enhance the Linux user:

- **Customized Shell**: A well-configured shell environment with zsh and a set of
  handpicked plugins and autocompletions.
- **Tmux Configuration**: Productive terminal multiplexing with Tmux for efficient
  multitasking.
- **Neovim Setup**: my neovim distribution configurations.

## Requirements

This configuration is designed so that the only thing required for execution
is to have [Git](https://git-scm.com/) installed and configured.

## Setting up the Linux

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

1. Remove the `wsl_only.sh` file if your not in a WSL environment:

   ```bash
   rm wsl_only.sh
   ```

1. Run the setup script:

   ```bash
   sh setup.sh
   ```

   It is recommended to check this script, because the script will create
   folders, install packages, configure the packages, symlink the files
   and folders to your machine, and make sure your configurations are applied.

## Your Customization

Feel free to customize these dotfiles to suit your preferences. Whether it's
tweaking the shell prompt, adding new aliases, or adjusting color schemes,
make it your own. The power of dotfiles lies in their ability to reflect
your unique workflow.

### Add Aliases & Env variables

For performance reasons, aliases and Env variables are defined in different
files; to add new ones and/or change existing ones, go to the following files:

```bash
.
└──📁 zsh
    ├──📁 .oh-my-zsh
    │   └──📁 custom
    │       └── aliases.zsh # Aliases should be defined here
    └─ .zprofile # ENV variables should be defined here

```

## Contributions

Contributions are welcome! If you have improvements, bug fixes, or new features
to propose.

Let's collaborate to make these dotfiles even better!

## License

This project is licensed under the MIT License - see the
[LICENSE](https://opensource.org/license/mit/) file for details.
