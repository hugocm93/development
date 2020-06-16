#!/bin/bash

echo $1
scl enable devtoolset-2 'csh -c '$1''
