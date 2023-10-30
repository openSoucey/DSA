#create a shell script to iterate through a defined file and search for a defined string pattern, then echo number of occurances
#!/bin/bash

# Define the file to search in
file_to_search="your_file.txt"

# Define the string pattern to search for
search_pattern="your_pattern"

# Use grep to search for the pattern in the file and count the occurrences
count=$(grep -o -c "$search_pattern" "$file_to_search")

# Echo the number of occurrences
echo "The string '$search_pattern' occurs $count times in $file_to_search."
