
PS1="┌─ \[\033[36m\]\u\[\033[m\]\[\033[32m\]:\[\033[1;33m\]\w\[\033[m\] ->\n└─\[\033[1;33m\]\$\[\033[m\] "

# Mac colors
if [ $(uname) = "Darwin" ]; then
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad
fi

# Linux colors TODO

# aliases
# use 'unalias' to remove alias programmatically
# run 'alias' to list all aliases
# listing directories
alias ls='ls -GFh'
alias l='ls -GFh'
alias ll='ls -la'

# finding things
alias grep='grep --colour=auto'
alias hosts='cat /etc/hosts'

# other
alias cls='clear'

# functions
# get size of a path in total, human readable format
function getsize
{
    local path=${1:-.}
    du -ch "$path" | grep total | grep --color=never -Eo '\d+[KMGT]'
}

# load any addons .bash_profile_addons
# this file should be in your home directory
if [ -f "$HOME/.bash_profile_addons" ]; then
    source $HOME/.bash_profile_addons
fi

if [ -f "$HOME/.bash_extend"  ]; then
    source $HOME/.bash_extend
fi

# NOTE: I got this from:
# http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux
#
# This file echoes a bunch of color codes to the terminal to demonstrate
# what's available. Each line is the color code of one forground color,
# out of 17 (default + 16 escapes), followed by a test use of that color
# on all nine background colors (default + 8 escapes).
#
function ansicolors
{
    declare -r T='gYw'   # The test text
    echo -e "\n                 40m     41m     42m     43m     44m     45m     46m     47m";
    for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m';
    do FG=${FGs// /}
    echo -en " $FGs \033[$FG  $T  "
    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
        do echo -en "$EINS \033[$FG\033[$BG  $T \033[0m\033[$BG \033[0m";
    done
    echo;
    done
    echo
}



