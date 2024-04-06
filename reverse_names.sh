#!/bin/sh
while read -r line
do
    IFS=' ' read -r -a array <<< "$line"
    echo "${array[1]} ${array[0]}"  # Outputs: element1
done  < "names.txt"


