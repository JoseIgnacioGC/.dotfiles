# Tmux configurations

Set true colors in tmux config file

```bash
    # outside tmux
    echo $TERM
    xterm-256color # e.g. output

    # .tmux.conf
    set -sa terminal-features ',xterm-256color:RGB'
```

## Plugins

The zsh shell plugins are managed by tmp.

See the documentation [here](https://github.com/tmux-plugins/tpm).

## Binds

The tmux key-bindings are defined in the `.tmux.binds.conf` file.
