#There is a large pile of socks that must be paired by color. 
#Given an array of integers representing the color of each sock, 
#determine how many pairs of socks with matching colors there are.
#!/bin/bash
read -p '' NUMBER_OF_SOCKS
read -p '' LIST_OF_COLORS

> sample.txt
    for COLOR in $LIST_OF_COLORS
    do
        echo $COLOR >> sample.txt
    done

#cat sample.txt | sort | uniq -c > number_of_socks_in_each_color.txt
#awk '{printf "%d\n", $1 / 2}' number_of_socks_in_each_color.txt > pair_of_socks_in_each_color.txt
#awk '{s+=$1} END {print s}' pair_of_socks_in_each_color.txt > total_number_of_pairs_of_socks.txt

cat sample.txt | sort | uniq -c | awk '{printf "%d\n", $1/2}' | awk '{s+=$1} END {print s}'
