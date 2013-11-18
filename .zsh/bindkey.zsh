bindkey -v
bindkey '\ew' kill-region
bindkey -s '\el' "ls\n"
bindkey -s '\e.' "..\n"
bindkey '^r' history-incremental-search-backward
bindkey "^[[3~" delete-char             # delete
bindkey "^[[5~" up-line-or-history      # page up
bindkey "^[[6~" down-line-or-history    # page down
bindkey '\e[7~' beginning-of-line       # home
bindkey '\e[8~' end-of-line             # end

# make search up and down work, so partially type and hit up/down to find relevant stuff
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line
bindkey ' ' magic-space    # also do history expansion on space

bindkey '^[[Z' reverse-menu-complete
