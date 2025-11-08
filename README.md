# xdg-config-home

## The keymap

### Neovim

> [!IMPORTANT]
> The _leader_ key is configured on `Space` and will be noted `Leader`

|Shortcut           | Current mode                     |  Action                              |
| :---------------- | :--------------------------------| :----------------------------------- |
| `Esc`             | INSERT, COMMAND, REPLACE, VISUAL | Go back to NORMAL mode               |
| `:`               | NORMAL                           | Enter COMMAND mode                   |
| `i`               | NORMAL                           | Enter INSERT mode                    |
| `R`               | NORMAL                           | Enter REPLACE mode                   |
| `v`               | NORMAL                           | Enter VISUAL mode                    |
| `h`,`j`,`k`,`l`   | NORMAL, VISUAL                   | Move cursor (left, down, up, right)  |

|Shortcut           | Current mode                     |  Action                              |
| :---------------- | :--------------------------------| :----------------------------------- |
| `Esc`             | INSERT, COMMAND, REPLACE, VISUAL | Go back to NORMAL mode               |


## This is stable for work

Neovim is configured mostly with the [Lazy Plugin Manager](https://github.com/folke/lazy.nvim),
therefore dependencies are locked with the `lazy-lock.json` file

> [!TODO]
>
> - [ ] How stable the stuff handled by Mason is ?
> - [ ] How stable is the configuration between TMUX and Neovim ?

## Install

```bash
git clone git@github.com:sun2140/xdg-config-home.git ~/my-config
```

Add the following inside `~/.bashrc`, `~/.zshrc` **AND** any similar

```bash
export XDG_CONFIG_HOME="$HOME/my-config"
```

## Dependencies to install

### TMUX

Follow the instruction on [Tmux plugin manager repository](https://github.com/tmux-plugins/tpm)

> [!IMPORTANT]
> If cloned in `~/.tmux/plugins/tpm` then you are done, else update the path in `~/my-config/tmux/tmux.conf`

### NVIM

Instructions are in the specific [nvim/README.md](nvim/README.md)

### Alacritty terminal (optional)

> [!NOTE]
> Gnome Terminal on Fedora wasn't allowing me to be full screen like this one
>
> [!IMPORTANT]
> At some point when following the instruction you will get to add the desktop
> shortcut.

1. Copy the bin and the logo as per the Alacritty readme instruction
2. But copy the `Alacritty.desktop` in `~/.local/share/applications` instead
3. Edit it, for each `Exec` add the `--config-file` argument like so:

   ```desktop
   Exec=alacritty --config-file /home/sun2140/my-config/alacritty/alacritty.toml
   ```

4. Save it and run the command `update-desktop-database`

Follow from top to bottom without skip the instructions on [Alacritty terminal repository](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
