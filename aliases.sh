#!/bin/bash

alias ..='cd_up'
alias bi='brew install'
alias bubu='brew update && brew upgrade'
alias c='code'
alias d='docker'
alias dco='docker-compose'
alias ds='docker rm -f $(docker ps -aq)'
alias g='git'
alias groot='cd $(git rev-parse --show-toplevel)'
alias gitroot=groot
alias inet='ping heise.de'
alias ll='eza --all --long'
alias mk='minikube'
alias rg='rg --hidden --glob '!.git/''
# common lisp readline support
alias sbcl='rlwrap sbcl'
alias sc='shellcheck -s bash'
alias showhosts='rg --context 2 HostName ~/.ssh/config'
alias t='tig'
alias treee='eza --tree'
alias tmp='cd /tmp'
alias ytdl='youtube-dl'

# k8s
alias events='kubectl get events --watch'
alias k='kubectl'
alias kc='kubectl'
alias kcx='kubectx'
alias pd='kubectl delete -k .'
alias po='kubectl get pods'
alias pw='kubectl get pods -w'
alias svc='kubectl get svc'

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

cleanup_branches(){
  local red="$(tput setaf 1)"
  local green="$(tput setaf 2)"
  local bold="$(tput bold)"
  local reset="$(tput sgr0)"

  local current_branch="$(git rev-parse --abbrev-ref HEAD)"
  for branch in $(git branch | grep --extended-regexp --invert-match "main|develop|$current_branch" | cut -c3-)
    do
      echo "Branch ${bold}$branch${reset} is already merged into ${bold}$current_branch${reset}."
      echo "Would you like to delete it? ${green}[Y]es${reset}/${red}[N]o${reset} "
      read -r REPLY
      if [[ $REPLY =~ ^[Yy] ]]; then
        git branch -D "$branch"
        git push --delete origin "$branch"
      fi
  done
}
