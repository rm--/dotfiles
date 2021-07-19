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

# haskell
export PATH=~/.local/bin:$PATH

# java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# javascript
export PATH="./node_modules/.bin:$HOME/.npm-packages/bin:$PATH"

## rust
export PATH="$HOME/.cargo/bin:$PATH"
