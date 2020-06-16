#!/bin/bash

cd /local/hmachado/v3o2/build
echo "Entered directory"

./gen_cmake.sh local
echo "Cmake"

./make.sh debug -j8
echo "Done!"

