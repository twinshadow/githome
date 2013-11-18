rsync.dot.pull.wkstn () {
  [ -n "$1" ] || return 1
  areyousure.sh && \
  rsync -azvH --include-from=$HOME/workstation.rsync -e ssh "$1" $HOME/ && \
  rsync -avzH --delete-delay "$1scriptfu/" $HOME/scriptfu/ && \
  rsync -avzH --delete-delay "$1.aliases/" $HOME/.aliases/
}

rsync.dot.push () {
  [ -n "$1" ] || return 1
  areyousure.sh && \
  rsync -avzH --include-from=$HOME/workstation.rsync -e ssh $HOME/ "$1" && \
  rsync -avzH --delete-delay $HOME/scriptfu/ "$1scriptfu/" && \
  rsync -avzH --delete-delay $HOME/.aliases/ "$1.aliases/"
}

rsync.ssh () {
  [ -n "$2" ] || return 1
  areyousure.sh && \
  /usr/bin/rsync -avzH -e'ssh' "$1" "$2"
}

rsync.ssh.filter () {
  [ -n "$3" ] || return 1
  areyousure.sh && \
  /usr/bin/rsync -avzH --exclude-from="$3" -e'ssh' "$1" "$2"
}
