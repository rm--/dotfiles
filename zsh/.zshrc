#!/usr/local/bin/zsh

SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt histverify         # show !: or ^ command results before execution
setopt append_history     # append instead of overwrite
setopt share_history      # share history between terminals
setopt auto_cd            # cd by typing directory name if it's not a command

# Path to dotfiles
DOT_FILES_DIR=$HOME'/used_projects/dotfiles'

## zsh

# use the follwing command to update the static bundles
#antibody bundle < $DOT_FILES_DIR'/zsh/.zsh_plugins.txt' > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh

# prompt customization
source $DOT_FILES_DIR'/zsh/'.spaceship-prompt

# completion
## docker
fpath=(${DOT_FILES_DIR}/zsh/completion $fpath)
autoload -Uz compinit && compinit -i


bindkey -e
bindkey '^[[3~' delete-char
bindkey '^D' kill-word
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

eval $(thefuck --alias --enable-experimental-instant-mode)

# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"

# load aliases
if [ "$(uname -a | grep -i darwin)" ]; then
    source $DOT_FILES_DIR/'alias/macOs'
elif [ "$(uname -a | grep -i linux)" ]; then
    source $DOT_FILES_DIR/'alias/linux'
fi
source $DOT_FILES_DIR'/alias/general'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
