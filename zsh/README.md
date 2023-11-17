# ZSH configurations

## Structure

```
    ENV variables -> .zprofile
    Alisases -> .oh-my-zsh/custom/aliases.zsh
```

## oh-my-zsh

The zsh shell plugins are managed by oh-my-zsh

If you want to download external plugins or themes, you should put them in `.oh-my-zsh/custom/` dir.

### Plugins

To add an additional external plugins:

Clone the repo in the `.oh-my-zsh/custom/plugins` dir.

```bash
  git clone https://github.com/zsh-users/zsh-completions $DOTFILES/zsh/.oh-my-zsh/custom/plugins/zsh-completions
```

Add the repo to a `git submodule`.

```bash
  git submodule add https://github.com/zsh-users/zsh-completions
```

And add the plugin to the `.zshrc` file.

```bash
    plugins=(
        # ...other_plugins
        zsh-completions
    )
```

### Theme

To add an additional external theme:

Download the theme (e.g. `oxide.zsh-theme`) file.

Add the file to the `.oh-my-zsh/custom/themes`

And assign the theme name to the theme variable in the `.zshrc` file

```bash
    ZSH_THEME="oxide"
```
