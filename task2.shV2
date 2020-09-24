cat wages.csv | cut -d , -f 1,2,4 | grep -v "gender" | tr "," " " | sort -k3,3n | head -n1
cat wages.csv | cut -d , -f 1,2,4 | grep -v "gender" | tr "," " " | sort -k3,3n | tail -n1
cat wages.csv | cut -d , -f 1,2,4 | grep -v "gender" | tr "," " " | sort -k3,3n | tail | grep -E -c "female" 
