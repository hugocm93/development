#!/bin/bash

cd /local/hmachado/v3o2/build
echo "Entered directory"

./gen_cmake.sh local
echo "Cmake"

./make.sh -j8
echo "Done!"

