for i in "*.csv"
do
cat wages.csv | cut -d , -f 1,2,4 | grep -v 'Gender' | sort -k 3n | head -n 1  
done

