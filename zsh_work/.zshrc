# export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mdoyle/.oh-my-zsh"

# --- Theme: Gruvbox ---
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

# Plugins
plugins=(
  git
  macos
  tmux
  vi-mode
  z
  zsh-autosuggestions
)

# Fix issue: nsecure completion-dependent directories detected
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

### ALIASES ###

# Git
alias gs="git status"
alias gsl="git stash list"
alias gsa="git stash apply --"
alias gsv="git stash show -p --"
alias gpull="git pull"
alias glatest="git pull origin dev2:dev2"
alias gpush="git push"
alias gd="git diff"
# alias gd="git difftool --no-symlinks --dir-diff"
alias gb="git branch"
alias gbn="git checkout -b "
alias gD="gb | fzf -m | xargs git branch -D"
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gitlog="git log --pretty=oneline --abbrev-commit --graph --decorate --all"
alias lg="lazygit"

# NPM project commands
alias setup="export AWS_PROFILE=dev2 && export CREATE_FEATURE_ENVIRONMENT_SKIP_WARNING_MESSAGE=true && pnmacsaml dev2"
alias n="npm run --"
alias lint="npm run lint"
alias fix="npm run lint:fix"
alias build="npm run build:layer && npm run build:dev"
alias feat="npm run build:feature"

# Tmux
alias t="tmux --"
alias ta="tmux a"
alias tn="tmux new -s"
alias tls="tmux ls"
tmux-sessionizer() {
  bash ~/.config/scripts/tmux-sessionizer.sh
}
zle -N tmux-sessionizer
bindkey '^f' tmux-sessionizer

#alias ls="ls -l"
alias ytgui="pythonw /usr/local/lib/python2.7/site-packages/youtube_dl_gui/__main__.py&"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Reload .zshrc file
alias reload="source ~/.zshrc"

# Get IP address
alias myip="curl http://ipecho.net/plain; echo" # Public facing ip address
alias ip="ipconfig getifaddr en1"

# Vim
alias vim="nvim"
alias v="nvim"
alias v.="nvim ."

# Config files
# not sure which ones I'll use most yet
alias .zshrc="vim ~/.zshrc"
alias zshrc="vim ~/.zshrc"
alias initvim="vim ~/.config/nvim/init.lua"

# Get History
alias hist="history"
alias h="history"

# Source files
alias sz="source ~/.zshrc"
alias sv="source ~/.vimrc"
alias si="source ~/.config/nvim/init.lua"

# ENVIRONMENT vars
#
# Print ENVIRONMENT vars
alias e="env | grep ENVIRONMENT"
# Set ENVIRONMENT var
alias se="setEnv"
# Unset ENVIRONMENT var
alias ue="unsetEnv"

function setEnv() {
  export ENVIRONMENT=$1
}
function unsetEnv() {
  unset ENVIRONMENT
}

# Other aliases
alias usage="du -h -d1"
alias runp="lsof -i "
alias ..="cd .."
alias ...="cd ../.."

# For brew, at least
export PATH=/usr/local/bin:$PATH

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
# Old version below was used prior to running 'brew upgrade'
# . "$(brew --prefix nvm)/nvm.sh"
# This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# pyenv
# https://opensource.com/article/19/5/python-3-default-mac#what-to-do
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


export NVM_DIR="/Users/mdoyle/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /Users/mdoyle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
