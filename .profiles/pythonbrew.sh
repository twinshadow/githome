#!/bin/sh
# curl -kL http://github.com/utahta/pythonbrew/raw/master/pythonbrew-install | bash
if [ -s "$HOME/.pythonbrew/etc/bashrc" ]; then
  . "$HOME/.pythonbrew/etc/bashrc"
fi
