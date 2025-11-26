# Set directory to store zinit plugins 
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# Load Powerlevel10k 
source ~/.p10k.zsh

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

# Normal aliases
alias ls='ls --color'
alias vim='nvim'
alias c='clear'
alias ff='fastfetch'
alias cat='bat'

# Git aliases
alias g='git'
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias ga='git add --all'

# Shell integration
eval "$(zoxide init --cmd cd zsh)"
export PATH="$HOME/.local/bin:$PATH"

# Java
export JAVA_HOME=/usr/lib/jvm/default
export PATH=$JAVA_HOME/bin:$PATH

# Nvim manpager
export MANPAGER='nvim +Man!'
