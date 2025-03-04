declare -a LogNames
LogFiles=$( ls /path/to/your/logs/ )

for i in $OneWeek; do
LogFiles+=($i)
done
echo ${LogLocations[3]}
