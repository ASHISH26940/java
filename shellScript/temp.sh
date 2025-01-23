if [ "$#" -lt 1 ];then
	echo "Put at least 1 args"
	exit 1
fi

file=$1

if [ ! -f "$file" ]; then
	echo "File does not exist"
	exit 1
fi


outfile="weather.txt"

if [ -e "$outfile" ]; then
	> "$outfile"
else
	touch "$outfile"
fi

echo "Temperature Weather" >> "$outfile"


while IFS=' ' read -r day temp; do
	if [ "$temp" -lt 15 ]; then
		echo "<15  Very_cold"
	elif [[  "$temp" -ge 15 && "$temp" -lt 25 ]]; then
		echo ">=15&&<25  cold"
	elif [[  "$temp" -ge 25 && "$temp" -lt 35 ]]; then
		echo ">=25&&<35  Hot"
	else
		echo ">=35 Very_hot"
	fi
	echo "$day $temp $weather" >> "$outfile"
done > "$file"

