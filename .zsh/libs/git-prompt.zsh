ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}(%{$reset_color%}%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

current_git_branch() {
  (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
}

parse_git_dirty() {
  local DIRTY=$(command git status --porcelain | tail -1)
  if [[ -n $DIRTY ]]; then
    echo "%{$fg_bold[magenta]%})%{$fg_bold[red]%}✗"
  else
    echo "%{$fg_bold[magenta]%})%{$fg_bold[blue]%}✓"
  fi
}

print_git_prompt() {
  if command git branch 2> /dev/null 1> /dev/null; then
    echo $ZSH_THEME_GIT_PROMPT_PREFIX$(current_git_branch)$(parse_git_dirty)" $ZSH_THEME_GIT_PROMPT_SUFFIX"
  else
    echo ""
  fi
}
