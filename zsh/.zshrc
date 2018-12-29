#!/usr/local/bin/zsh

ZSH_THEME="zsh_prompt_theme"
SAVEHIST=10000
HISTFILE=~/.zsh_history

# show !: or ^ command results before execution
setopt histverify

# Path to your dotfiles
DOT_FILES_DIR=$HOME'/used_projects/dotfiles'

source $DOT_FILES_DIR'/zsh/'$ZSH_THEME

# command-line completion
## zsh
plugins=(… $DOT_FILES_DIR'/zsh/submodules/zsh-completions')

## docker
fpath=(${DOT_FILES_DIR}/zsh/completion $fpath)
autoload -Uz compinit && compinit -i

source $DOT_FILES_DIR'/zsh/submodules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
source $DOT_FILES_DIR'/zsh/submodules/zsh-autosuggestions/zsh-autosuggestions.zsh'

export PATH=$HOME/bin:/usr/local/bin:$PATH

# bind keys for word jumping
bindkey -e
bindkey '^[[3~' delete-char

eval $(thefuck --alias --enable-experimental-instant-mode)

# set env variables
export EDITOR=vim
export GIT_EDITOR=vim
export SHELL=/usr/local/bin/zsh
export TERM=xterm-256color
export VISUAL=vim
export WORKON_HOME=$HOME/.virtualenvs
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# load aliases
if [ "$(uname -a | grep -i darwin)" ]; then
    source $DOT_FILES_DIR/'alias/macOs'
elif [ "$(uname -a | grep -i linux)" ]; then
    source $DOT_FILES_DIR/'alias/linux'
fi
source $DOT_FILES_DIR'/alias/general'

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

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

