# Enable colors
autoload colors zsh/terminfo
colors

# Super minimal prompt
precmd() { print "" }
PS1="⟩ "
RPS1="%{$fg[magenta]%}%20<...<%~%<<%{$reset_color%}"

# Auto start tmux
if [ "$TMUX" = "" ]; then tmux; fi

# Auto CD
setopt auto_cd

# Spell Check / Auto Correct
setopt correctall
alias git status='nocorrect git status'

# Install AntiGen
if [[ ! -f ~/.antigen.zsh ]]; then
  curl -L git.io/antigen > ~/.antigen.zsh
fi
source ~/.antigen.zsh


# Syntax Highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Auto Suggest
antigen bundle zsh-users/zsh-autosuggestions

antigen-bundle zsh-users/zsh-history-substring-search

# Git shorts
antigen bundle git

# Customize to your needs...
bindkey -v
bindkey '^R' history-incremental-search-backward

# Aliases
alias vim="nvim"
alias ev='vim ~/dotfiles/vimrc'
alias et='vim ~/dotfiles/tmux.conf'
alias ez='vim ~/dotfiles/zshrc'
alias vw='vim -c VimwikiIndex'
alias dc='docker-compose'
alias mux='tmuxinator'
