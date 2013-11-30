# Looks in a Perldoc for a word
pod.w () {
  perldoc $1 | less "+/^\s+$2"
}

alias perldb="perl -de0"
alias pod="perldoc"
alias podf="perldoc -f"
prep () {
    perl -MData::Dumper -MTerm::ReadLine -e '$r = Term::ReadLine->new(1); while(defined($_ = $r->readline("> "))){$ret=Dumper(eval($_)); $err=$@; if($err ne ""){print $err;}else{print $ret;}}';
}
