if [ "$#" -lt 1 ]; then
	exit 1
fi

file=$1

if [[ ! -f "$file" && ! -e "$file" ]]; then
	exit 1
fi

palin(){
	local word=$1
	local reversed=$(echo "$word" | rev)
	if [ "$word" = "$reversed" ]; then
		return 0
	else
		return 1
	fi
	
}


echo "Sanitize the input: "

while IFS= read -r line; do
	for word in "$line"; do
		clean_word=$(echo "$word" | tr -d '[:punct:]')
		if palin "$clean_word"; then
			echo "$clean_word"
		fi
	done
done < "$file"

