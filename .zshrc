# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git archlinux) 

source $ZSH/oh-my-zsh.sh


# Power and reboot
alias poweroff="~/scripts/poweroff.sh"
alias reboot="~/scripts/reboot.sh"

# Misc
alias vim=nvim
alias py=python3

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# bun completions
[ -s "/home/kevin/.bun/_bun" ] && source "/home/kevin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NIXPKGS_ALLOW_UNFREE=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi

#if ! systemctl --user is-active --quiet tmux.service; then
#    systemctl --user start tmux.service
#fi
#exec tmux attach-session -d -t "${USER}" >/dev/null 2>&1
