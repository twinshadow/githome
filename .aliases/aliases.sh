alias.reload () {
  for ASRC in ${HOME}/.aliases/*.sh ; do . ${ASRC}; done;
}

cd () {
  if   [[ "x$*" == "x..." ]]; then
    cd ../..
  elif [[ "x$*" == "x...." ]]; then
    cd ../../..
  elif [[ "x$*" == "x....." ]]; then
    cd ../../..
  elif [[ "x$*" == "x......" ]]; then
    cd ../../../..
  else
    builtin cd "$@"
  fi
}

shredder () {
  test -d "$1" || return
  TARGET="$1"

  find "$TARGET" -type f -exec shred -fu \{\} \;
  find "$TARGET" -mindepth 1 -maxdepth 1 -exec rm -rf \{\} \;
}

# Tofrodos
alias dos2unix="fromdos"
alias unix2dos="todos"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'

alias cscope.make="cscope -bkquR"

alias date.utc="date -u +%F\ %T\ %:z"
alias date.xml="date +%FT%T\ %:z"
alias date.out="date +%m%d%k%M"

alias du.h="du -sh"
alias du.m="du -sm"
alias df="df -h"
alias diffu="diff --unified=10 --show-c-function --recursive"

alias find.dupes="find-dupes.sh"

fork () {
  (setsid "$@" &);
}

alias grep="grep --color=auto"

alias less="LESS=FSRX less"
alias lla="ls -la"
alias la="ls -a"
alias llatr="ls -latr"

mkcd () {
  mkdir -p $1 &&\
  cd $1
}

alias ps.cpu="ps ahuwx | sort -nr -k 3 | head -n10"
alias ps.mem="ps ahuwx | sort -nr -k 4 | head -n10"

# multiple-spaces > single-space
alias sed.ws="sed -ne 's/  */ /gp'"
# tabs > new-line
alias sed.tn="sed -ne 's/\t/\n/gp'"
alias stx="(setsid /usr/bin/startx &); logout"
alias svndiff='svn diff --diff-cmd diff -x "--unified=10 --show-c-func"'

alias termcast="telnet termcast.org"
alias term.reset="echo c; stty echo"

alias when="when --calendar_today_style='underlined,fgyellow,bgblack' --items_today_style='bold,fgred,bgblack'"

alias xargs0="xargs -0"
