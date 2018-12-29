# Path to dotfiles
DOT_FILES_DIR=$HOME'/used_projects/dotfiles'

# set env variables
export EDITOR=vim
export GIT_EDITOR=vim
export SHELL=/usr/local/bin/zsh
export TERM=xterm-256color
export VISUAL=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# find binaries in other directories
export PATH=$HOME/bin:/usr/local/bin:$PATH

# golang
export GOPATH="${HOME}/.go"
export PATH=${PATH}:${GOPATH//://bin:}/bin

# haskell
export PATH=~/.local/bin:$PATH

# java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# javascript
export PATH="./node_modules/.bin:$HOME/.npm-packages/bin:$PATH"

# python
export PATH=$HOME/Library/Python/3.7/bin:$PATH

## rust
export PATH="$HOME/.cargo/bin:$PATH"


# colorized man pages
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    PAGER="${commands[less]:-$PAGER}" \
    _NROFF_U=1 \
    PATH="$HOME/bin:$PATH" \
      man "$@"
}
