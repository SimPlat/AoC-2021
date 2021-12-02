#!/bin/bash

last=0;counter=0

while IFS= read -r line; do 
    if [[ $line -gt $last ]]; then ((counter++)); fi; last=$line
done < input.txt

echo $counter
