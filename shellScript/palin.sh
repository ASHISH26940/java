palin()
{
    local n=$1
    local rev=0
    local n1=$n

    while [ $n -ne 0 ]; do
        d=$((n%10))
        rev=$((rev*10 + d))
        n=$((n/10))
    done

    if [ "$rev" -eq "$n1" ]; then
        echo 1
    else
        echo 0
    fi
}

read -p "Enter the number: " num

res=$(palin $num)

if [ "$res" -eq 1 ]; then
    echo "Palin"
else
    echo "Non - palin"
fi
