#!/bin/sh
value=`cat infin_stones.txt`
echo "whole file: $value"

lines=$(echo $value | tr "," "\n")
declare -i count=0

re='^[0-9]+$'


for line in $lines
do

    if [[ "$line" =~ ^-?[0-9]+$ ]]; then
        echo "The line is an integer."
        count=$((count + $line))
    else    
        echo "The line is not an integer."
    fi

done
echo "$count"

touch total_stones.txt
echo "The total number of stones is: [$count]" > total_stones.txt