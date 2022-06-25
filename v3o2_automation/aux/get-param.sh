#!/bin/bash

function get-param-func() {
    if test -n "$1"; then
        ret=$1
        return 0
    elif test ! -t 0; then
        ret=`cat`
        return 0
    else
        return 1
    fi
}
