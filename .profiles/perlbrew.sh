#!/bin/sh
# curl -L http://xrl.us/perlbrewinstall | bash
export PERLBREW_ROOT="$HOME/.perlbrew"
if [ -s "$HOME/.perlbrew/init" ]; then
  . "$PERLBREW_ROOT/init"
  . "$PERLBREW_ROOT/etc/bashrc"
fi
