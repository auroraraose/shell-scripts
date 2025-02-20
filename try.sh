#!/bin/bash


output_directory="sorted_data"

input_file="$output_directory/profile.txt"

output_file="$output_directory/age.txt"

if [ ! -d "$output_directory" ]; then
  mkdir "$output_directory"  # Create the directory
  echo "Directory '$output_directory' created."
fi

echo -e "1,Aakansha,22,F\n2,Tessa,23,F\n3,Rao,24,F\n5,Mampilly,25,F" > "$input_file"

if [ -f "$input_file" ]; then
  cut -d',' -f3 "$input_file" | sort -n > "$output_file"
  echo "Sorted ages have been saved to '$output_file'."
else
  echo "Error: $input_file does not exist."
fi
