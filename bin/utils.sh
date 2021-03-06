#!/bin/bash

# utils.sh - reusable definitions.
#
# Copyright (c) 2013 Sergey Konoplev
#
# Sergey Konoplev <gray.ru@gmail.com>

function die() {
    echo "$(date) ERROR $(basename $0): $1" 1>&2
    exit 1
}

function info() {
    echo "$(date)  INFO $(basename $0): $1"
}

function progress() {
    tty -s && echo -ne "\r$(date) PROGRESS $(basename $0): $1"
}

function readall() {
    while read l; do sql="$sql\n$l"; done
    echo -e $sql
}

function contains() {
    for item in $1; do
        if [ $2 = $item ]; then
            return 0
        fi
    done

    return 1
}
