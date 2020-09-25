#finds difference in minimum wage between 12 and 16 years of school
#usage: bash task3.sh wages.csv
12years=$(cat $1 | cut -d, -f3,4 | grep "12," | cut -d, -f2 | sort -n | head -n1)
16years=$(cat $1 | cut -d, -f3,4 | grep "16," | cut -d, -f2 | sort -n | head -n1)
echo -e "16years - 12years" | bc

