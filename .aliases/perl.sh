# Looks in a Perldoc for a word
pod.w () {
  perldoc $1 | less "+/^\s+$2"
}

alias perldb="perl -de0"
alias pod="perldoc"
alias podf="perldoc -f"
