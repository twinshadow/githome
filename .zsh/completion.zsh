setopt always_to_end
setopt auto_menu         # show completion menu on succesive tab press
setopt auto_name_dirs
setopt complete_aliases
setopt complete_in_word
unsetopt menu_complete   # do not autoselect the first completion entry

zmodload -i zsh/complist

zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/
if [ "x$CASE_SENSITIVE" = "xtrue" ]; then
  zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  unset CASE_SENSITIVE
else
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
fi
zstyle ':completion:*' list-colors ''

# Load and run compinit
autoload -U compinit
compinit -i
zstyle ':completion:*' use-cache true

# use known_hosts and config for hostname completion
[ -r ~/.ssh/known_hosts ] && _ssh_hosts=(${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
hosts=(
  "$_ssh_hosts[@]"
  `hostname`
  localhost
)

zstyle ':completion:*:hosts' hosts $hosts

alias man='nocorrect man'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias mkdir='nocorrect mkdir'
alias gist='nocorrect gist'
alias heroku='nocorrect heroku'
alias ebuild='nocorrect ebuild'
alias hpodder='nocorrect hpodder'
