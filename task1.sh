#sorts wages.csv by gender and years experience to show unique combinations
#usage: bash task1.sh
cat wages.csv | grep -E "male" | cut -d, -f1,2 | tr "," " " | sort -k1,1 -k2,2n | uniq > genderYears.txt

