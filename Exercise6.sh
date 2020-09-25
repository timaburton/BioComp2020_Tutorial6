#usage: bash Exercise6.sh input.csv

cat $1 | grep -E ^female | cut -d , -f 1,2 | tr , " " | sort -k 2n > part1.csv 

cat $1 | grep -E ^male | cut -d , -f 1,2 | tr , " " | sort -k 2n >> part1.csv

uniq part1.csv

#Part2 


Echo "Highest Earner Gender, Years Experience, Wage:"
cat wages.csv | tr , " " | cut -d " " -f 1,2,4 | sort -k 3n | tail -n 1


Echo "Lowst Earner Gender, Years Experience, Wage:"
cat wages.csv | tr , " " | cut -d " " -f 1,2,4 | sort -k 3n | head -n 2 | tail -n 1

Echo “Number of Females in Top Ten Earners”
cat wages.csv | tr , " " | cut -d " " -f 1,2,4 | sort -k 3n | head -n 11 | tail -n 10 | grep -w "female" | wc -l

#Part3


va12=$(cat wages.csv | cut -d , -f 3,4 | tr , " " | grep -E ^12 | cut -d " " -f 2 | awk '{ total += $1 } END { print total/NR }')



va16=$(cat wages.csv | cut -d , -f 3,4 | tr , " " | grep -E ^16 | cut -d " " -f 2 | awk '{ total += $1 } END { print total/NR }')

Echo Effect of Graduating College on Wages:
echo "$va16 - $va12" | bc

