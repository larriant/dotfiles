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
bindkey '^R' history-search-backward


cdc() {
  cd "~/NearSt/$1"
}

# Aliases
alias vim="nvim"
alias ev='vim ~/dotfiles/vimrc'
alias et='vim ~/dotfiles/tmux.conf'
alias ez='vim ~/dotfiles/zshrc'
alias vw='vim -c VimwikiIndex'
alias dc='docker-compose'
alias mux='tmuxinator'
alias t='task'
alias tn='task project:NearSt'
alias ts='task sync'
alias ti='task project:'
alias diclean='docker images | grep '\''<none>'\'' | grep -P '\''[1234567890abcdef]{12}'\'' -o | xargs -L1 docker rmi'
alias dclean='docker ps -a | grep -v '\''CONTAINER\|_config\|_data\|_run'\'' | cut -c-12 | xargs docker rm'
alias jules='echo "I am the best"'
alias cdn='cdc()'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$PATH"
