cat wages.csv | cut -d "," -f 1,2 | sort -V >> newwages.txt

echo -n "The max salary value candidate is: "
cat wages.csv | cut -d "," -f 1,2,4 | sort -k3 -t "," -V | tail -n 2 | head -n 1
echo -n "The min salary value candidate is: "
cat wages.csv | cut -d "," -f 1,2,4 | sort -k3 -t "," -V | head -n 1
no_college=$(cat wages.csv | cut -d "," -f 3,4 | egrep ^"[0-15]" | cut -d "," -f 2 | sort -n | head -n 1)
college=$(cat wages.csv | cut -d "," -f 3,4 | egrep ^16 | cut -d "," -f 2 | sort -n | head -n 1)
echo -n "The difference in min wage for college and no college is: "
echo "$college - $no_college" | bc

