<<<<<<< HEAD
cat wages.csv | cut -d , -f 1,2,4 | grep -v "gender" | tr "," " " | sort -k3,3n | head -n1
cat wages.csv | cut -d , -f 1,2,4 | grep -v "gender" | tr "," " " | sort -k3,3n | tail -n1
cat wages.csv | cut -d , -f 1,2,4 | grep -v "gender" | tr "," " " | sort -k3,3n | tail | grep -E -c "female" 
=======
for i in "*.csv"
do
cat wages.csv | cut -d , -f 1,2,4 | grep -v 'Gender' | sort , -k 3n | grep -w 'female'  
done

>>>>>>> d5a6c05a94ce9650da64eddef8568130916e184e
