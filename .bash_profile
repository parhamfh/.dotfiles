#color terminal
export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#change terminal prompt
export PS1="\u@\h:\w|\n> "

# Set by Iterm2
#export TERM=xterm-256color

alias lime='subl'

export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

# source control
alias gitrh='git reset HEAD --hard'
alias gitr='git reset HEAD'
alias gitrs='git reset HEAD^ --soft'
alias shipit="git push"
alias pull="git pull"
alias pp="git pull && git push"
alias st="git status"
alias gdiff="git diff"
alias cch="git diff --cached"
alias stash_pull_pop="git stash && git pull && git stash pop"
alias assume="git update-index --assume-unchanged"
alias nosume="git update-index --no-assume-unchanged"


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
