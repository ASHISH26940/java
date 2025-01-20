number=(1 2 3 4 5 6 7 8 9)

echo "The array is: "

for n in "${number[@]}"; do
	if((n%2==0));then
		echo "$n"
	fi
done


