
if [ "$#" -lt 1 ]; then
	exit 1
fi



for files in "$@"; do
	if [ -f "$files" ]; then
		lines=$(wc -l < "$file" )
		words=$(wc -w < "$file" )
		charac=$(wc -c < "$file" )
	fi
	echo "File: $file"
	echo "Lines: $lines"
	echo "Words: $words"
	echo "Characters: $charac"
done


