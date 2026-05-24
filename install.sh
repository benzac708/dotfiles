#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$HOME/dotfiles"
echo "→ Symlinking dotfiles from $DOTFILES"

# Single files → $HOME
for f in .bashrc .bash_env .gitconfig; do
  if [ -f "$HOME/$f" ] && [ ! -L "$HOME/$f" ]; then
    cp "$HOME/$f" "$HOME/${f}.bak" 2>/dev/null || true
    echo "  backed up $f → ${f}.bak"
  fi
  ln -sf "$DOTFILES/$f" "$HOME/$f"
  echo "  linked $f"
done

# .tmux.conf → $HOME (or ~/.config/tmux/)
TARGET_TMUX="$HOME/.tmux.conf"
if [ -f "$TARGET_TMUX" ] && [ ! -L "$TARGET_TMUX" ]; then
  cp "$TARGET_TMUX" "$TARGET_TMUX.bak" 2>/dev/null || true
fi
ln -sf "$DOTFILES/.tmux.conf" "$TARGET_TMUX"
echo "  linked .tmux.conf"

# nvim → ~/.config/nvim/
if [ -d "$HOME/.config/nvim" ] && [ ! -L "$HOME/.config/nvim" ]; then
  cp -r "$HOME/.config/nvim" "$HOME/.config/nvim.bak" 2>/dev/null || true
  echo "  backed up nvim/ → nvim.bak"
fi
ln -sfn "$DOTFILES/config/nvim" "$HOME/.config/nvim"
echo "  linked config/nvim"

echo ""
echo "✓ Done. Restart shell or: source ~/.bashrc"
echo "  Missing tools: sudo apt install fd-find bat btop"
echo "  K9s: curl -sS https://webi.sh/k9s | sh"
