# for common
## Del
bindkey '^[[3~' delete-char

if [[ $OSTYPE = 'msys' ]]; then
    # for MSYS2
    ## arrow up
    bindkey '^[[A' up-line-or-search
    ## arrow down
    bindkey '^[[B' down-line-or-search
    ## Home
    bindkey "\e[H" beginning-of-line
    ## End
    bindkey "\e[F" end-of-line
else
    # for Linux
    ## arrow up
    bindkey "^[OA" up-line-or-search
    ## arrow down
    bindkey "^[OB" down-line-or-search
    ## Home
    bindkey "\e[1~" beginning-of-line
    ## End
    bindkey "\e[4~" end-of-line
fi
