# Usage: bash ./getwageinfo.sh
echo "The highest earner has the following information: "
echo $(cat wages.csv | sort -t , -k 4 -nr | head -n 1)
echo "The lowest earner has the following information: " 
echo $(cat wages.csv | sort -t , -k 4 -n | head -n 2 | tail -n 1)
echo "Number of females in the top ten earners: "
echo $(cat wages.csv | sort -t , -k 4 -nr | head -n 10 | grep -c "female")

