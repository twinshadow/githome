alias iptab.rm="sudo iptables -D INPUT"
alias iptab.mk="sudo iptables --line-numbers -vn -L INPUT | grep -i"

## sane aliases
alias iptab.status="sudo iptables -vL"
