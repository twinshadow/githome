## Changing Directories
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

## Input/Output
unsetopt flowcontrol
unsetopt mail_warning

## Program aliases and functions
ALIAS_PATH="$HOME/.aliases"
echo ${ALIAS_PATH}: | while read -d: APATH; do
  if [ -d "${APATH}" ]; then
    for ASRC in ${APATH}/*.sh; do
      source "$ASRC"
    done
    break
  fi
done
unset ALIAS_PATH
unset APATH
unset ASRC

## Zsh stuff
ZSH_PATH="$HOME/.zsh"
echo ${ZSH_PATH}: | while read -d: ZPATH; do
  if [ -d "${ZPATH}" ]; then
    for ZSRC in ${ZPATH}/*.zsh; do
      source "$ZSRC"
    done
    break
  fi
done
unset ZSH_PATH
unset ZPATH
unset ZSRC
