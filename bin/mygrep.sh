#!/bin/csh
grep $argv *  -Rn --color=always | grep -v -E "swp|pyc|.svn"
#grep $argv *  -Rn --exclude-dir='*.cache*' --color=always | grep -v -E "swp|pyc|.svn"
