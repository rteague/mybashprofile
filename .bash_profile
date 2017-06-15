
PS1="┌─ \[\033[36m\]\u\[\033[m\]\[\033[32m\]:\[\033[1;33m\]\w\[\033[m\] ->\n└─\[\033[1;33m\]\$\[\033[m\] "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# listing directories
alias ls='ls -GFh'
alias l='ls -GFh'
alias ll='ls -la'

# finding things
alias grep='grep --colour=auto'

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
if [ -f ".bash_profile_addons" ]; then
    source .bash_profile_addons
fi


