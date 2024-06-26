# Neovim Distributions

Here are configs of different Neovim distributions.

## Requirements

- Neovim 0.10.0 or higher

## Usage

default distro:

```bash
    nvim somefile.txt
```

another:

```bash
    nvchad somefile.txt
```

## Add another distribution

Creates a folder with your custom config in `$HOME/.config`.

```bash
    # e.g.
    mkdir $HOME/.config/nvim_custom
    touch $HOME/.config/nvim_custom/init.lua
```

And create an aliase to open Neovim with your custom config.

```bash
    alias nvim_custom="NVIM_APPNAME=nvim_custom nvim"
    nvim_custom somefile.txt
```
