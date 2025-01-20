advPalin(){
    local n=$1
    local n1=$n
    local rev=0

    while [ "$n" -ne 0 ]; do
        d=$(( n % 10 ))
        rev=$(( rev*10 + d ))
        n=$((n/10))
    done

    if [ "$rev" -eq "$n1" ]; then
        echo "isPalin"
    else
        echo "isnotPalin"
    fi
}



file="input.txt"

if [[ ! -f "$file" && ! -e "$file" ]]; then
    exit 1
fi

while IFS= read -r line; do
    for word in $line; do
        advPalin "$word"
    done
done < "$file"


