#!/bin/sh
SRCPATH="$HOME/.ssh-agent-info"
if [ -f "$SRCPATH" ] && {source "$SRCPATH"; kill -0 "$SSH_AGENT_PID" >/dev/null 2>&1 || (rm "$SRCPATH" && return 1)}; then
  . "$SRCPATH"
fi
