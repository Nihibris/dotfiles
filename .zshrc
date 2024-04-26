neofetch

# Misc
alias hx=helix
alias v=nvim
alias py=python3

alias gaa="git add -A"
alias gcmsg="git commit -m"
alias gp="git push"

alias ls="ls --color=auto"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# bun completions
[ -s "/home/kevin/.bun/_bun" ] && source "/home/kevin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export EDITOR='nvim'
export VISUAL='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
