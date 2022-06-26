# Base ZSH home config

# Path to your oh-my-zsh installation.
export ZSH=/Users/michaeldoyle/.oh-my-zsh

# Import shared zsh config
source ~/.zshrc_shared

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

# zsh-syntax-highlighting (Needs to be imported last)
source /Users/michaeldoyle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

