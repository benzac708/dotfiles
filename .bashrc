# ~/.bashrc

[[ $- != *i* ]] && return

# History
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend checkwinsize

# PATH
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# Mise (tool version manager)
export PATH="$HOME/.local/share/mise/shims:$PATH"

# Bun (PAI runtime)
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# Panda (PAI assistant)
alias pai='bun /home/ubuntu/.claude/PAI/TOOLS/pai.ts'

# Editor
export EDITOR=nvim
export VISUAL=nvim

# FZF
eval "$(fzf --bash 2>/dev/null)"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
if command -v batcat &>/dev/null; then
  alias ff='fzf --preview "batcat --style=numbers --color=always {}"'
elif command -v bat &>/dev/null; then
  alias ff='fzf --preview "bat --style=numbers --color=always {}"'
fi

# Zoxide
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init bash)"
fi

# LS
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Git
alias gst='git status'
alias glg='git log --oneline --graph --decorate --all'
alias gdf='git diff'

# Docker
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dlogs='docker logs -f'

# Kubernetes
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kga='kubectl get all'
alias kgn='kubectl get nodes'

# Tmux
alias t='tmux new-session -A -s main'

# Navigation
alias dotfiles='cd ~/dotfiles'

# Project-specific GH aliases
[ -f ~/dotfiles/bin/gh-aliases.sh ] && source ~/dotfiles/bin/gh-aliases.sh
