if [ "$#" -lt 1 ]; then
    exit 1
fi

for file in "$@"; do
    if [[ -f "$file" && -e "$file" ]]; then
        echo "Processing file"

        lines=$( wc -l < "$file" )
        words=$(wc -w < "$file")
        charac=$(wc -m < "$file")

        echo "lines: $lines"
        echo "words: $words"
        echo "charac: $charac"
    else
        exit 1
    fi
done


