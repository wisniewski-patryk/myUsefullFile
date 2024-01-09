# my custom prompt with git branch 

source /etc/bash_completion.d/git-prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\e[93m\](\A) \[\e[92m\]\]\u@\h \[\e[38;5;27m\]\w \[\e[91m\]$(__git_ps1 "(%s)")\[\e[0m\] $ '
