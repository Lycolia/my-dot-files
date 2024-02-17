# config for interactive shell
ZSH_HOME="${HOME}/.zsh"

## for sakura internet
# export LANG=ja_JP.UTF-8
# export MAILCHECK=0
# PATH=/home/<user-name>/local/bin:$PATH

## load configs
source $ZSH_HOME/option.zsh

if [[ $OSTYPE = 'msys' ]]; then
    source $ZSH_HOME/prompt_msys2.zsh
else
    source $ZSH_HOME/prompt.zsh
fi

source $ZSH_HOME/plugin.zsh
source $ZSH_HOME/history.zsh
source $ZSH_HOME/alias.zsh
source $ZSH_HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_HOME/keybind.zsh
# Required nvm
#   https://github.com/nvm-sh/nvm#readme
# source $ZSH_HOME/nvm-integration.zsh

# Paths
export PATH=$PATH:$HOME/bin
