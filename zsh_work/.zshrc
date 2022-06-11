export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mdoyle/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel9k/powerlevel9k"

# --- Theme: Gruvbox ---
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

# POWERLEVEL9K PROMPT
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(prompt_status, custom_env, time)
# POWERLEVEL9K_CUSTOM_ENV="echo export | grep ENVIRONMENT"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


### ALIASES ###

# Git
alias gs="git status"
alias gsl="git stash list"
alias gsa="git stash apply --"
alias gsv="git stash show -p --"
alias gpull="git pull"
alias glatest="git pull origin dev2:dev2"
alias gpush="git push"
# alias gd="git diff"
alias gd="git difftool --no-symlinks --dir-diff"
alias gb="git branch"
alias gbn="git checkout -b "
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
alias .vimrc="vim ~/.vimrc"
alias vimrc="vim ~/.vimrc"
alias init.vim="vim ~/.config/nvim/init.vim"
alias ivim="vim ~/.config/nvim/init.vim"
alias .zshrc="vim ~/.zshrc"
alias zshrc="vim ~/.zshrc"

# Get History
alias hist="history"
alias h="history"

# Source files
alias sz="source ~/.zshrc"
alias sv="source ~/.vimrc"
# alias si="source ~/.config/nvim/init.vim"
alias si="source ~/.config/nvim/init.lua"

# Coverage reports
alias fcov="open tm/coverage/index.html"
alias bcov="open trade-management/coverage/index.html"

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
