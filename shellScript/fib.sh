fibo(){
    local n=$1
    

    if [ "$n" -eq 0 ]; then
        echo 0
    elif [ "$n" -eq 1 ]; then
        echo 1
    else
        prev1=$(fibo $((n-1)))
        prev2=$(fibo $((n-2)))
        echo $((prev1+prev2))
    fi
}

if [ $# -ne 1 ]; then
    exit 1
fi

n=$1

val=$(fibo $n)

echo "The value is : $val"
