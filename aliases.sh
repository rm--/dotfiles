#!/bin/sh

alias ..='cd_up'
alias bi='brew install'
alias bubu='brew update && brew upgrade'
alias c='code'
alias d='docker'
alias dco='docker-compose'
alias g='git'
alias inet='ping heise.de'
alias k='kubectl'
alias kc='kubectl'
alias kcx='kubectx'
alias ll='exa --all --long'
alias mk='minikube'
alias pip=/usr/local/bin/pip3
alias py='python'
alias py3='python3'
alias python=/usr/local/bin/python3
alias rg='rg --hidden --glob '!.git/''
# common lisp readline support
alias sbcl='rlwrap sbcl'
alias sc='shellcheck -s bash'
alias showhosts='rg --context 2 HostName ~/.ssh/config'
alias t='tig'
alias tmp='cd /tmp'
alias ytdl='youtube-dl'


# cd .. multiple times
cd_up() {
  cd "$(printf "%0.s../" $(seq 1 "${1:-1}" ))" || exit
}

drit() {
  docker run --interactive --tty "$1" /bin/sh
}

# gpg
gpge() {
  gpg --encrypt -a --recipient "$1" "$2"
}

gpgd() {
  gpg --decrypt "$1"
}

mkcd() {
  mkdir -p "$1" && cd "$1" || exit
}

# run mvn test for single test class ($1=<test class>) or single test method in test class $1=<test class#test method>
mst() {
  mvn clean -Dtest="$1" test
}

# git checkout new branch from $1 as issue tag and $2 as issue name.
nb() {
  BRANCHNAME_DEST=$(echo "$2" | tr '[:upper:]' '[:lower:]' | sed -e "s/ /-/g; s/://g; s/ä/ae/g; s/ö/oe/g; s/ü/ue/g; s/ß/ss/g;")
  BRANCHNAME_DEST=$(echo "$1"-"$BRANCHNAME_DEST")
  BRANCHNAME_SRC=$(git rev-parse --abbrev-ref HEAD)
  git switch -c "$BRANCHNAME_DEST" "$BRANCHNAME_SRC"
}
