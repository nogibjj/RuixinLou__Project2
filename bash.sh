#! /usr/bin/env bash

#hello message
echo "Hello! Who am I talking to?"
read name
echo "It's nice to meet you $name"

#filtering function
echo "Enter the file name"
read file
if [ -e "$file" ]
then
    #while read line; do echo $line; done < $file
    cat $file | while read line
    do
        echo $line
        if [ $line -gt 18 -a $line -lt 60 ]
        then
            echo "Suitable to work"
            echo $line >> filtered.txt
        else
            echo "Age is not suitable to work"
        fi
    done
else
    echo "$file does not exist"
fi