year12=$(cat $1 | cut -d, -f3,4 | grep "12," | cut -d, -f2 | sort -n | head -n1)
year16=$(cat $1 | cut -d, -f3,4 | grep "16," | cut -d, -f2 | sort -n | head -n1)
echo "$year16 - $year12" | bc
