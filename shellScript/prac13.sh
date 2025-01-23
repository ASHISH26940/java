if [ "$@" -lt 1 ];then
	echo "Wrong number of arguments"
	return 1
fi

w=0
l=0
c=0

for direcs in "$@"; do
	for direc in "$direcs"; do
		if [ ! -d "$direc" ];then
			exit 1
		fi
		for files in "$direc"/*; do
			for file in "$files"; do
				if [[ ! -e "$file" && ! -f "$file" ]]; then
					exit 1
				else
					w=$(wc -w < "$file")
					c=$(wc -c < "$file")
					l=$(wc -l < "$file")
				fi
				echo "This $file contains"
				echo "words: "$w" lines: $l characters: $c"
			done
		done
	done
done
