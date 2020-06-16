#!/bin/bash



echo "Nome do arquivo"
read input_variable
path=$(pwd)/$input_variable
echo "$path"

/home/t/tecgraf/prod/app/cq/tools/uncrustify/uncrustify -c /local/hmachado/v3o2_folders/v3o2/doc/CodeStandard/CodingStyle/uncrustify.cfg --no-backup $path

