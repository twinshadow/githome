alias enc="gpg -e"
alias dec="gpg -d"
gpg.trans () {
  gpg -e $1 && shred -zu $1
}
