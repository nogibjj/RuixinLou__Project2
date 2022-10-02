#! /usr/bin/env bash

#hello message
echo "Hello! Who am I talking to?"
read name
echo "It's nice to meet you $name"

#filtering function
echo "enter the file name"
read file
comp1=$18
comp2=$60
if [ -e "$file" ]; then
    while read -r line
    if [ "$line" -gt "$comp1" ] && [ "$line" -lt "$comp2"]
    then 
        echo "Suitable to work"
        "$line" -o filtered.txt
    else
        echo "Age is not suitable to work"
fi