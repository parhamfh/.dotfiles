#color terminal
export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#change terminal prompt
export PS1="\u@\h:\w> "
export TERM=xterm-color

alias lime='open -a '\''Sublime Text'\'''
alias sou='. sou'

# For python interactive shell and UTF-8 support

export PYTHONSTARTUP=~/.pythonrc

# export LC_ALL="en_GB.UTF-8"
# export PYTHONIOENCODING=UTF-8

# source control
alias gitrh='git reset HEAD --hard'
alias gitr='git reset HEAD'
alias gitrs='git reset HEAD^ --soft'
alias shipit="git push"
alias pull="git pull"
alias pp="git pull && git push"
alias st="git status"
alias stash_pull_pop="git stash && git pull && git stash pop"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH
#export PATH=~/bin:/usr/local/lib:/usr/local/bin:$PATH

# source ~/.inputrc

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
