#! /usr/bin/env bash

#hello message
echo "Hello! Who am I talking to?"
read name
echo "It's nice to meet you $name"

#filtering function
echo "Enter the file name"
read file
if [[ -e "$file" ]]
then
    #while read line; do echo $line; done < $file
    read line
    if [ "$line" -gt 18 ] && [ "$line" -lt 60]
    then
        echo "Suitable to work"
        "$line" -o filtered.txt
    else
        #cho "Age is not suitable to work"
    fi
else
    echo "$file does not exist"
fi