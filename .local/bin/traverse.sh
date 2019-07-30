#!/usr/bin/env bash
# Allows quick traversal of directories using fuzzy finder (fzf)
#
# Usage:
#   This file should not be called directly, the function should like so:
#   traverse [DIRECTORY]

traverse() {
    nextDirectory=$1

    if [ -z "$nextDirectory" ]
    then
        nextDirectory="."
    fi

    while true; do
        previousDirectory="$nextDirectory"
        nextDirectory=$(find "$nextDirectory" -maxdepth 1 -type d | fzf)
        test "$nextDirectory" = "$previousDirectory" && break
    done
    cd "$nextDirectory" || exit 1
}
