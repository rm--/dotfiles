#!/usr/local/bin/zsh

SAVEHIST=10000
HISTFILE=~/.zsh_history

# show !: or ^ command results before execution
setopt histverify

# Path to dotfiles
DOT_FILES_DIR=$HOME'/used_projects/dotfiles'

## zsh
source $DOT_FILES_DIR'/zsh/'antigen.zsh
source $DOT_FILES_DIR'/zsh/'.antigenrc

# prompt customization
source $DOT_FILES_DIR'/zsh/'.spaceship-prompt

# completion
## docker
fpath=(${DOT_FILES_DIR}/zsh/completion $fpath)
autoload -Uz compinit && compinit -i


# bind keys for word jumping
bindkey -e
bindkey '^[[3~' delete-char

eval $(thefuck --alias --enable-experimental-instant-mode)


# load aliases
if [ "$(uname -a | grep -i darwin)" ]; then
    source $DOT_FILES_DIR/'alias/macOs'
elif [ "$(uname -a | grep -i linux)" ]; then
    source $DOT_FILES_DIR/'alias/linux'
fi
source $DOT_FILES_DIR'/alias/general'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

