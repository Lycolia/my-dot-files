
if [ "$USERNAME" = "root" ]; then CARETCOLOR="red"; else CARETCOLOR="magenta"; fi

GIT_BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')

PROMPT="
%{$fg_bold[cyan]%}%n%{$reset_color%}%{$fg_bold[blue]%}@%m%{$reset_color%}:%{${fg_bold[green]}%}%~%{$reset_color%}
%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)  %{${reset_color}%}$($GIT_BRANCH)"

RPS1="%(?..%{$fg_bold[red]%} [ %? ]%{$reset_color%}) %D - %*"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}(%{$reset_color%}%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}  "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[magenta]%})%{$fg_bold[red]%}✗"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[magenta]%})%{$fg[cyan]%} ？"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[magenta]%})%{$fg_bold[blue]%} ✓"
