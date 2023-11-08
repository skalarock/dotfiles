# Tmux configuration

Config file for [Tmux](https://github.com/tmux/tmux/wiki) to build terminal environment for day to day use.

## Installation

First step is to install Tmux:

    Fedora:     sudo dnf install tmux
    Ubuntu:     sudo apt install tmux
    macOS:      brew install tmux

Install the config files according to the instructions in this repo's top level README.md.

## Documentation

The manual page has detailed reference documentation on tmux and a description of every command...

    man 1 tmux

### Tmux modules

TPM is used as tmux module manager

#### Installation

Requirements: `tmux` version 1.9 (or higher), `git`, `bash`.

Clone TPM:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Put this at the bottom of `~/.tmux.conf`:

```bash
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

Reload TMUX environment so TPM is sourced:

```bash
# type this in terminal if tmux is already running
tmux source ~/.tmux.conf
```

#### Installing plugins

1. Add new plugin to `~/.tmux.conf` with `set -g @plugin '...'`
2. Press `prefix` + <kbd>I</kbd> to fetch the plugin.

#### Uninstalling plugins

1. Remove (or comment out) plugin from the list.
2. Press `prefix` + <kbd>alt</kbd> + <kbd>u</kbd> to remove the plugin.

All the plugins are installed to `~/.tmux/plugins/` so alternatively you can
find plugin directory there and remove it.

#### Key bindings

`prefix` + <kbd>I</kbd>
- Installs new plugins from GitHub or any other git repository
- Refreshes TMUX environment

`prefix` + <kbd>U</kbd>
- updates plugin(s)

`prefix` + <kbd>alt</kbd> + <kbd>u</kbd>
- remove/uninstall plugins not on the plugin list

##### Docs

- [Help, tpm not working](https://github.com/tmux-plugins/tpm) - problem solutions

#### Fix font issues

Default fonts used for terminals could have minor cosmetic issues and as of that use [Nerd fonts](https://github.com/ryanoasis/nerd-fonts)
Note: Ubuntu terminal supports only Mono fonts

