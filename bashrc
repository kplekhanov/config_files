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
alias ek='emacsclient -e '\''(kill-emacs)'\'' '

# other
alias ..='cd ..'
alias h='history'

#--------------------
# conda initialize (usually added authomatically anyway)
#--------------------

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kirill/opt/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kirill/opt/miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/kirill/opt/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/kirill/opt/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

