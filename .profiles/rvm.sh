#!/bin/sh
# bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
  . "$HOME/.rvm/scripts/rvm"
fi
