# config for interactive shell

ZSH_HOME="${HOME}/.zsh"

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
# source $ZSH_HOME/nvm.zsh
