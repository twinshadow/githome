## Portage and family (emerge, q, pkg)

## Misc utilities
#  I don't want to forget about these, so they are here
alias lafilefixer.fixit="sudo lafilefixer --justfixit"
alias revdep.rebuild="sudo revdep-rebuild"

## emerge aliases
alias em="sudo emerge"
alias em.1="em --oneshot"
alias em.dc="em --depclean"
alias em.r="em --unmerge"
alias em.s="em --sync"
alias em.u="em --update"

 # sane aliases
alias emerge.depclean="sudo emerge --depclean"
alias emerge.oneshot="sudo emerge --oneshot"
alias emerge.unmerge="sudo emerge --unmerge"
alias emerge.update="sudo emerge --update"

## layman aliases
alias layman.add="sudo layman --add"
alias layman.del="sudo layman --delete"
alias layman.info="sudo layman --info"
alias layman.list="sudo layman --list"
alias layman.sync="sudo layman --sync"

## eix aliases
alias eix.sync="sudo eix-sync"
alias eix.i="eix -I"
alias eix.s="eix -S"

