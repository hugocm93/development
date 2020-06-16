#!/bin/csh

export lib_dir=$1
export PATH=$lib_dir/bin:$PATH
export LD_LIBRARY_PATH="$lib_dir/lib64:$lib_dir/lib:$LD_LIBRARY_PATH"
export CPATH="$lib_dir/include:$CPATH"
export MANPATH="$lib_dir/share/man:$MANPATH"
