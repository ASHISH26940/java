file="grade.txt"

if [ ! -f "$file" ]; then
	echo "File do not exist"
	exit 1
fi

outfile="outfile.txt"

if [ -e "$outfile" ]; then
	> "$outfile"
else
	touch "$outfile"
fi

grade=""

while IFS=" " read -r name roll marks; do
	if [[ "$marks" =~ ^[0-9]+$ ]]; then
		if [ "$marks" -ge 90 ]; then
        grade="O"
		elif [ "$marks" -ge 80 ]; then
		    grade="E"
		elif [ "$marks" -ge 70 ]; then
		    grade="A"
		elif [ "$marks" -ge 60 ]; then
		    grade="B"
		elif [ "$marks" -ge 50 ]; then
		    grade="C"
		elif [ "$marks" -ge 40 ]; then
		    grade="D"
		else
		    grade="F"
		fi
	fi
    echo "Student $name of $roll secured $grade" >> "$outfile"
done < "$file"
