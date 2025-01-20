armstrong(){
    local n=$1
    local n1=$n
    local sum=0
    local c=0

    while [ "$n" -ne 0 ]; do
        c=$((c+1))
        n=$((n/10))
    done

    #echo "$c"

    n=$n1

    #echo "$n"


    while [ "$n" -gt 0 ]; do
        d=$(( n % 10 ))
        sum=$(echo "scale=5; $sum + $d^$c " | bc)
        n=$(( n / 10 ))
    done

    #echo "$sum"

    if [ "$n1" -eq "$sum" ]; then
        echo "Armstrong number : $n1"
    else
        echo "Not a armstrong number: $n1"
    fi
}

file="input.txt"

if [[ ! -f "$file" && ! -e "$file" ]]; then
    exit 1
fi

while IFS= read -r line; do
    for word in "$line"; do
        armstrong "$word"
    done
done < "$file"

