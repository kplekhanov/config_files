#--------------------
# Some settings
#--------------------

# Define some colors first:
export TERM=xterm-256color # to have good colors
export MKL_NUM_THREADS=1

#--------------------
# Shell Prompt
#--------------------

if [[ $- != *i* ]]; then return; fi
PS1='\[\e[38;5;220m\]\u@\h:\w\$\[\e[m\] '

#--------------------
# Paths
#--------------------

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:
export PATH=$PATH:

#--------------------
# Personal aliases
#--------------------

# The 'ls' family (this assumes you use the GNU ls)
alias ls='ls -hXBCF --color'    # add colors for filetype recognition
alias ll='ls -l'                # show detailed information
alias la='ls -al'               # show hidden files
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'              # sort by change time
alias lu='ls -lur'              # sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al |more'         # pipe through 'more'

# The 'emacs' family
alias ew='emacsclient -t'
alias ee='emacsclient -c'
alias ed='emacs --daemon'
alias ekill='emacsclient -e '\''(kill-emacs)'\'' '

# other
alias ..='cd ..'
alias h='history'
