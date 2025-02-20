#!/bin/bash

read -p "Enter n: " n
x=1
output_directory="people"
if [ ! -d "$output_directory" ]; then
  mkdir "$output_directory"
  echo "Directory '$output_directory' created."
fi

while [ $x -le $n ]; do
  inputfile="$output_directory/$x.txt"
  echo "$x" > "$inputfile"
  echo " $inputfile creates with: $x"
  (( x++ ))
done

