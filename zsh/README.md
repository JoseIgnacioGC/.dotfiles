# ZSH configurations

## Structure

```bash
.
└──📁 zsh
    ├──📁 .oh-my-zsh
    │   └──📁 custom
    │       ├──📁 plugins # Your custom plugins
    │       ├──📁 themes # Your custom shell themes
    │       └── aliases.zsh # Aliases should be defined here
    ├── .zprofile # ENV variables should be defined here
    └── .zshrc # oh-my-zsh configs & others

```

## oh-my-zsh

> [!NOTE] Please read the oh-my-zsh documentation before making any changes

The zsh shell plugins are managed by oh-my-zsh

If you want to download external plugins or themes, you should put them in
`.oh-my-zsh/custom/` dir.

### Plugins

To add an additional external plugins:

1. Clone the repo in the `.oh-my-zsh/custom/plugins` dir.

   ```bash
   git clone https://github.com/zsh-users/zsh-completions $DOTFILES/zsh/.oh-my-zsh/custom/plugins/zsh-completions
   ```

1. Add the repo to a `git submodule`.

   ```bash
   git submodule add https://github.com/zsh-users/zsh-completions
   ```

1. Finally, add the plugin to the `.zshrc` file.

   ```bash
    plugins=(
        # ...other_plugins
        zsh-completions
    )
   ```

### Theme

To add an additional external theme:

1. Download the theme (e.g. `oxide.zsh-theme`) file.

1. Add the file to the `.oh-my-zsh/custom/themes`

1. And assign the theme name to the theme variable in the `.zshrc` file

   ```bash
   ZSH_THEME="oxide"
   ```
