#color highlighting of the search string in the outputs of grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='36' 


#apitude
alias install='sudo apt-get install'
alias distu='sudo apt-get dist-upgrade'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias uu='sudo apt-get update && sudo apt-get upgrade'

#git
alias gaa='git add .'
alias gca='git commit -a'
alias gcm='git commit -m $1'
alias gp='git pull'
alias gpom='git push origin master'
alias gitall='gaa && gca && gpom'


#other
alias ..='cd ..'
alias c='cat'
alias cl='clear'
alias d='ding'
alias gs='grep -isr '$1' '$2''
alias l='ls --color=auto'
alias ll='ls -ahls --color=auto'
alias h="history 30"
alias hg="history |grep"
alias s='sudo -s'


