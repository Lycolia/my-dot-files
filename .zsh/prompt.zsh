
setopt prompt_subst
if [ "$USERNAME" = "root" ]; then CARETCOLOR="red"; else CARETCOLOR="magenta"; fi

ZSH_HOME="${HOME}/.zsh"
source $ZSHHOME/libs/git-prompt.zsh


PROMPT="
%{$fg_bold[cyan]%}%n%{$reset_color%}%{$fg_bold[blue]%}@%m%{$reset_color%}:%{${fg_bold[green]}%}%~%{$reset_color%}
%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)  %{${reset_color}%}"'$(print_git_prompt)'

RPS1="%(?..%{$fg_bold[red]%} [ %? ]%{$reset_color%}) %D - %*"
