#usage: bash Exercise6.sh input.csv

cat $1 | grep -E ^female | cut -d , -f 1,2 | tr , " " | sort -k 2n > part1.csv 

cat $1 | grep -E ^male | cut -d , -f 1,2 | tr , " " | sort -k 2n >> part1.csv

uniq part1.csv


