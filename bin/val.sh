#!/bin/bash


VALPATH=""
if [ $MODE = "debug" ]; then
    VALPATH="/local/hmachado/v3o2/bin/debug/Linux64e6/v3o2"
else
    VALPATH="/local/hmachado/v3o2/bin/release/Linux64e6/v3o2"
fi

vglrun valgrind --show-possibly-lost=no --leak-check=full --log-file="/local/hmachado/Desktop/logfile.out" $VALPATH
