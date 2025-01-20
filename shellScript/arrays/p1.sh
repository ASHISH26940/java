fruits=("a" "b" "c" "d")
echo "all fruits : ${fruits[@]}"

echo "first fruit: ${fruits[0]}"

last_index=$((${#fruits[@]}-1))
echo "Last location : ${last_index}"

array_length=${#fruits[@]}
echo "array length: $array_length"
