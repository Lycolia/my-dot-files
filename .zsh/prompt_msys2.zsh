## git functions

current_git_branch() {
  (msys2_git branch --show-current 2> /dev/null)
}

parse_git_dirty() {
    local DIRTY=$(msys2_git status -s 2> /dev/null  | tail -1)
  if [[ -n $DIRTY ]]; then
    echo "%{$fg_bold[magenta]%})%{$fg_bold[red]%}✗"
  else
    echo "%{$fg_bold[magenta]%})%{$fg_bold[blue]%}✓"
  fi
}

print_git_prompt() {
  local FIND_BRANCH=$(msys2_git branch 2> /dev/null | tail -1)
  if [[ -n $FIND_BRANCH ]]; then
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
