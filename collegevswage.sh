# Usage: bash collegevswage.sh
min12yrschool=$(cat wages.csv | tr "," " " | awk '$3 == 12' | sort -k 4 -n | head -n 1 | cut -d " " -f 4)
min16yrschool=$(cat wages.csv | tr "," " " | awk '$3 == 16' | sort -k 4 -n | head -n 1 | cut -d " " -f 4)
echo "Minimum wage with 12 years of education (No college): " $min12yrschool
echo "Minimum wage with 16 years of education (Graduating college): " $min16yrschool
echo "Graduating college will allow the minimum wage to increase by:"
echo "$min16yrschool - $min12yrschool"| bc
