# Enable colors
autoload colors zsh/terminfo
colors

# Super minimal prompt
precmd() { print "" }
PS1="⟩ "
RPS1="%{$fg[magenta]%}%20<...<%~%<<%{$reset_color%}"

# Auto start tmux
if [ "$TMUX" = "" ]; then 
  tmux; 
  ssh-add -K 
fi

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

SAVEHIST=10000 # Number of entries
HISTSIZE=10000
HISTFILE=~/.zhistory # File
setopt APPEND_HISTORY # Don't erase history
setopt EXTENDED_HISTORY # Add additional data to history like timestamp
setopt INC_APPEND_HISTORY # Add immediately
setopt HIST_FIND_NO_DUPS # Don't show duplicates in search
setopt HIST_IGNORE_SPACE # Don't preserve spaces. You may want to turn it off
setopt NO_HIST_BEEP # Don't beep
setopt SHARE_HISTORY # Share history between session/terminals


cdc() {
  cd "~/NearSt/$1"
}

# Aliases
alias vim="nvim"
alias ev='vim ~/dotfiles/vimrc'
alias et='vim ~/dotfiles/tmux'
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
alias jd='ssh-add -K && aws ecr get-login --no-include-email | sh -'
alias cdn='cdc()'

# Git Aliases
alias g='git'
alias gA='git add -A'
alias ga='git add'
alias gp='git push'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
