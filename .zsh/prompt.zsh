setopt prompt_subst
setopt transient_rprompt

autoload -U colors && colors

color_cksum () {
  CKSUM=$(echo $1 | cksum | cut -c-10)
  COLOR=$(($CKSUM % 8))
  test $COLOR -eq 0 && BOLD=1 || BOLD=$(($CKSUM & 1))
  echo "\e[${BOLD};3${COLOR}m$1\e[0m"
}

fg_txt () {
  echo "%{$fg[$1]%}$2%{$reset_color%}"
}

fgb_txt () {
  echo "%{$fg_bold[$1]%}$2%{$reset_color%}"
}

SYSTEM="$(uname -s)"

ACPI_PATH=/usr/bin/acpi
FREE_PATH=/usr/bin/free
IP_PATH=/usr/sbin/ip

BATTERY () {
    fg_txt yellow "$($HOME/scriptfu/battery.sh)%"
}

LOADAVG () {
    fgb_txt white "$($HOME/scriptfu/loadavg.sh)"
}

MEMORY () {
    fgb_txt white "$($HOME/scriptfu/memfree.sh)"
}

NET () {
    fgb_txt white "$($HOME/scriptfu/netstatus.sh)"
}

RPS1="%(?..$(fg_txt red %?%1v))"
PS1="($(color_cksum "$USER")@$(color_cksum "$HOST")) [$(fgb_txt green %D) $(fg_txt green %\*)] [\$(NET)] [\$(MEMORY)$(fg_txt green Mb)] [\$(LOADAVG)] [\$(BATTERY)]
%6~ %# "
