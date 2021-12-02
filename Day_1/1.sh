#!/bin/bash

# Prep ws
inputFile="input"
wget https://raw.githubusercontent.com/SimPlat/AoC-2021/master/Day_1/$inputFile

# Set up
counter=0; [ -n "$(tail -c 1 $inputFile)" ] && echo >> $inputFile

# Solve
while IFS= read -r line; do 
    [ $line -gt $last ] && ((counter++)); last=$line
done < $inputFile; echo $counter

# Clean up
rm $inputFile
