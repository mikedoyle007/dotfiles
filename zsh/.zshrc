# if [ -z "$TMUX" ]; then
#   exec tmux new-session -A -s workspace
# fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/michaeldoyle/.oh-my-zsh

# To use 'code .' in terminal
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Set name of the theme to load. 
# --- Theme 1: PowerLevel9k ---
# ZSH_THEME="powerlevel9k/powerlevel9k"

# --- Theme 2: Gruvbox ---
ZSH_THEME="gruvbox" # gruvbox
SOLARIZED_THEME="dark" # gruvbox



# --- Theme 1 Settings Start ---
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status, custom_env, time)
POWERLEVEL9K_CUSTOM_ENV="export | grep ENVIRONMENT | awk -F'=' '{print $2}'"
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir newline vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status node_version time)

# Color Settings
#POWERLEVEL9K_DIR_HOME_BACKGROUND='051' # Cyan1
#POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='051' 
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='051'
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'

# `vcs` color customization
#POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
#POWERLEVEL9K_VCS_CLEAN_BACKGROUND='048'	# Springgreen1
#POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='226' # Yellow1 or Gold1 = 220
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='198' # DeepPink1

# Node version
#POWERLEVEL9K_NODE_VERSION_FOREGROUND='black'
#POWERLEVEL9K_NODE_VERSION_BACKGROUND='048' # Springgreen1

# Status
#POWERLEVEL9K_STATUS_OK_FOREGROUND='048'
#POWERLEVEL9K_STATUS_OK_BACKGROUND='black'
#POWERLEVEL9K_STATUS_ERROR_FOREGROUND='198'
#POWERLEVEL9K_STATUS_ERROR_BACKGROUND='black'
# --- Theme 1 Settings end ---


# Plugins
plugins=(
  colored-man-pages
  extract
  git
  git-open
  last-working-dir
  osx
  sudo
  tmux
  vi-mode
  web-search
  z
  zsh-autosuggestions
  zsh_reload
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
#export SSH_KEY_PATH="~/.ssh/rsa_id"


### ALIASES ###

# Git
alias gs="git status"
alias gpull="git pull"
alias gpush="git push"
# alias gd="git diff"
alias gd="git difftool --no-symlinks --dir-diff"
alias gb="git branch"
alias gbn="git checkout -b "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias lg="lazygit"

# NPM project commands
alias n="npm run --"

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
alias .vimrc="vim ~/.vimrc"
alias vimrc="vim ~/.vimrc"
# alias init.vim="vim ~/.config/nvim/init.vim"
alias init.lua="vim ~/.config/nvim/init.lua"
alias ivim="vim ~/.config/nvim/init.vim"
alias .zshrc="vim ~/.zshrc"
alias zshrc="vim ~/.zshrc"

# history
alias h="history"

# Source files
alias sz="source ~/.zshrc"
alias sv="source ~/.vimrc"
alias si="source ~/.config/nvim/init.vim"

# Other aliases
alias usage="du -h -d1"
alias runp="lsof -i "
alias ..="cd .."
alias ...="cd ../.."

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/michaeldoyle/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/michaeldoyle/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/michaeldoyle/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/michaeldoyle/Desktop/google-cloud-sdk/completion.zsh.inc'; fi

# Flutter
export PATH="$PATH:/Users/michaeldoyle/flutter/bin"

# Android SDK
# export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_HOME=/Users/michaeldoyle/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/michaeldoyle/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH/:$ANDROID_HOME/platform-tools
export PATH=$PATH/:$ANDROID_SDK_ROOT/platform-tools

# Python
# export PYTHONPATH=$PYTHONPATH:/Users/michaeldoyle/Library/Python/3.6/lib/python/site-packages
# export PYTHONPATH=$PYTHONPATH:/Users/michaeldoyle/Library/Python/3.8/lib/python/site-packages

# pyenv
# https://opensource.com/article/19/5/python-3-default-mac#what-to-do
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# mysql
export PATH="/usr/local/mysql/bin:$PATH"

# zsh-syntax-highlighting
source /Users/michaeldoyle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

