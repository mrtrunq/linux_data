# trung start
export HOMEBREW_NO_AUTO_UPDATE=1
export PATH=$PATH:/usr/bin
cd ~/Desktop

# trung history
HISTFILE=~/.zsh_history
HISTCONTROL=ignoreboth
HISTIGNORE="&"
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt inc_append_history
setopt share_history

# trung git branch
autoload -Uz vcs_info
precmd() { vcs_info }
setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats '(%b) '
PROMPT='%F{green}%n@%m %F{yellow}%1~ %F{cyan}${vcs_info_msg_0_}%F{reset}# '

# trung node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# trung mysql
export PATH="/opt/homebrew/Cellar/mysql@8.0/8.0.41_3/bin:$PATH"

# trung suggest && highlight for terminal
[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# trung alt + left, alt + right
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# trung alias
alias fzfroot='cd $(find / 2>/dev/null -type d | fzf)'
alias fzfhome='cd $(find ~ -type d|fzf)'
alias ll='tree -L 1'

