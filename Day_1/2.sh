#!/bin/bash

# Prep ws
tmpDir="godwhy"; inputFile="input"
mkdir -p $tmpDir && cd "$_" && mkdir 0 && wget https://raw.githubusercontent.com/SimPlat/AoC-2021/master/Day_1/$inputFile

# Set up
counter=-2; [ -n "$(tail -c 1 $inputFile)" ] && echo >> $inputFile; for s in `seq 3`; do pushd 0 && pushd; done

# Magic
while IFS= read -r line; do
   popd +3 && mkdir -p $line && pushd $line && stck=$(pushd) && pushd
   for i in $(echo $stck | sed -r 's/[^0-9]/ /g; s/\s+/ /g'); do ((window+=i)); done
   [ $window -gt $last ] && ((counter++)); last=$window && window=0
done < $inputFile; echo $counter

# Clean up
rm -r ../$tmpDir
