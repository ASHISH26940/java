num=()

echo "User input: "
read num_elem

read -p "ENter the number of items :" items

for((i=0;i<items;i++));do
	read -p "Element number : $i -> " temp
	num+=("$temp")
done

for i in "${num[@]}";do
	echo "$i"
done

