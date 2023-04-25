#!/bin/bash


VALPATH=""
if [ $MODE = "debug" ]; then
    VALPATH="/local/hmachado/v3o2/build/debug/Linux64e7/v3o2"
else
    VALPATH="/local/hmachado/v3o2/build/release/Linux64e7/v3o2"
fi

valgrind --show-possibly-lost=no --leak-check=full --log-file="/local/hmachado/Desktop/logfile.out" $VALPATH
