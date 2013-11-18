#!/bin/sh
if [ -d "/usr/lib/surfraw" ]; then
  PATH="$PATH:$XDG_CONFIG_HOME/surfraw/elvi:/usr/lib/surfraw"
fi
