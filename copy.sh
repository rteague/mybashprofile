#!/bin/bash

#
# copy.sh
# by rashaud
# Sat June 17 2017
## 

function prog_usage
{
    echo "usage: copy.sh"
}

function main
{
    if ! cp .bash_profile $HOME && source $HOME/.bash_profile; then 
        exit 1
    fi
    echo "Copied!"
    exit 0
}

main "$@"


