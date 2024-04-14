# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git archlinux) 

source $ZSH/oh-my-zsh.sh

# Misc
alias hx=helix
alias v=nvim
alias py=python3

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# bun completions
[ -s "/home/kevin/.bun/_bun" ] && source "/home/kevin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="~/.local/bin$PATH"

export NIXPKGS_ALLOW_UNFREE=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
