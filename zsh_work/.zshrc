# Base ZSH work config

# Path to your oh-my-zsh installation.
export ZSH="/Users/mdoyle/.oh-my-zsh"

# Fix issue: nsecure completion-dependent directories detected
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

### ALIASES ###

# Git
alias glatest="git pull origin dev2:dev2"

# NPM project commands
alias setup="export AWS_PROFILE=dev2 && export CREATE_FEATURE_ENVIRONMENT_SKIP_WARNING_MESSAGE=true && pnmacsaml dev2"
alias lint="npm run lint"
alias fix="npm run lint:fix"
alias build="npm run build:layer && npm run build:dev"
alias feat="npm run build:feature"

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

export NVM_DIR="/Users/mdoyle/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

# Import shared zsh config
source ~/.zshrc_shared

# zsh-syntax-highlighting (Needs to be imported last)
source /Users/mdoyle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

