# dotfiles — Terminal-first DevOps environment

Keyboard-driven shell, editor, and multiplexer configs for daily K8s/cloud work.

## Stack

| Tool | Config | Purpose |
|---|---|---|
| **bash** | `.bashrc` | Shell — fzf + zoxide + aliases |
| **nvim** | `config/nvim/` | Editor — LazyVim + LSP + Telescope |
| **tmux** | `.tmux.conf` | Session persistence, vim-like panes |
| **git** | `.gitconfig` | Aliases, sane defaults |
| **fzf** | in `.bashrc` | Fuzzy find everything |
| **zoxide** | in `.bashrc` | `z dir` → jump anywhere |

## Quick install

```bash
git clone https://github.com/benzac708/dotfiles ~/dotfiles
cd ~/dotfiles && bash install.sh
```

## Keybindings

### tmux (prefix: `C-Space`)
- `C-M-Arrow` — navigate panes
- `C-M-S-Arrow` — resize panes
- `M-Arrow` — navigate windows
- `h`/`v` — split pane horiz/vert

### bash
- `Ctrl-R` — fuzzy history search (fzf)
- `Ctrl-T` — fuzzy file search (fzf)
- `z <dir>` — jump to directory (zoxide)
- `ff` — fzf preview with syntax highlighting
