if [ "$#" -lt 1 ]; then
	echo "Enter valid arguments"
	exit 1
fi


file=$1

if [ ! -f "$file" ]; then
	echo "No file found"
	exit 1
fi

mr="" # roll
mm=0 #max marks
mn="" # name

while IFS='|' read -r roll name marks; do
	if [[ "$marks" =~ ^[0-9]+$ && "$marks" -gt "$mm" ]]; then
		mm=$marks
		mr=$roll
		mn=$name
	fi
done < "$file"


echo "Student with highest marks"
echo " $mn | $mr | $mm "  


