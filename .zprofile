## Paths
PATH="$HOME/bin:$PATH"
PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin"

## Profile stuff
PROFILE_PATH="$HOME/.profiles:$HOME/dotdotdot/.profiles"
echo ${PROFILE_PATH}: | while read -d: PPATH; do
  if [ -d "${PPATH}" ]; then
    for PSRC in ${PPATH}/*.sh; do
      source "$PSRC"
    done
    break
  fi
done
unset PROFILE_PATH
unset PPATH
unset PSRC

if [ -f /etc/profile.d/perl.sh ]; then
  . /etc/profile.d/perl.sh
fi

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export LYNX_CFG=~/.lynxrc
export GREP_OPTIONS='--color=auto --exclude=\*\.svn-base --exclude=\*\.tmp --binary-files=without-match'

# Common Folders
export CDPATH=".:~:/var/www:$CDPATH";

###
# NNTP Server
export NNTPSERVER="news.gmane.org"

###################
# Default Programs
###################

# BROWSER=lynx
# BROSWER=firefox
BROWSER=w3m
export BROWSER

# EDITOR=vi
# EDITOR=nano
EDITOR=vim
export EDITOR

# PAGER=vimpager
PAGER=less
export PAGER

# VIEWER=asciiview
# VIEWER=cacaview
# VIEWER=fbv
VIEWER=vim
export VIEWER

# SCREEN=screen
SCREEN=tmux
export SCREEN

## Scripts and power tools
if [ -d "$HOME/scriptfu" ]; then
  . "$HOME/scriptfu/scriptfu-path.sh"
fi

## System Workarounds
case "$OSTYPE" in
  freebsd*)
    alias ls='ls -G'
    ;;
  linux-gnu)
    alias ls='ls --color=auto'
    ;;
# netbsdelf can't display color?
esac

# OCD: Cleanup the extraneous exports
if (whence perl >&/dev/null); then
  PATH="$(echo "$PATH" | perl -F: -ane 'our %C;
                         foreach(@F){chomp; $C{$_}="";}
                         foreach(keys(%C)){print $_.":";}')"
fi

# Extra OCD: Remove non-existent directories
#PATH="$(echo "$PATH" | perl -F: -ane 'our %C; foreach(@F){chomp; $C{$_}="" if -d $_;} foreach(keys(%C)){print $_.":";} print "\b \n";')"
