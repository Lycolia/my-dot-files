## git functions

current_git_branch() {
  (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
}

parse_git_dirty() {
  local DIRTY=$(command git status -s | tail -1)
  if [[ -n $DIRTY ]]; then
    echo "%{$fg_bold[magenta]%})%{$fg_bold[red]%}✗"
  else
    echo "%{$fg_bold[magenta]%})%{$fg_bold[blue]%}✓"
  fi
}

print_git_prompt() {
  if command git branch 2> /dev/null 1> /dev/null; then
    echo "%{$fg_bold[magenta]%}(%{$reset_color%}%{$fg_bold[yellow]%}"$(current_git_branch)$(parse_git_dirty)" %{$reset_color%} "
  else
    echo ""
  fi
}

## setting propmt

if [ "$USERNAME" = "root" ]; then
  CARETCOLOR="red";
else
  CARETCOLOR="magenta";
fi

PROMPT="
%{$fg_bold[cyan]%}%n%{$reset_color%}%{$fg_bold[blue]%}@%m%{$reset_color%}:%{${fg_bold[green]}%}%~%{$reset_color%}
%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)  %{${reset_color}%}"'$(print_git_prompt)'

RPS1="%(?..%{$fg_bold[red]%} [ %? ]%{$reset_color%}) %D - %*"
