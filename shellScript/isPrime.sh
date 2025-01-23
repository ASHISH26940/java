evenOdd(){
	local n=$1
	
	if [ "$n" -lt 2 ]; then
		echo "$n is not a prime number"
		return
	fi
	
	for (( i=2;i*i<=n;i++ )); do
		if [ $(( n%i )) -eq 0 ]; then
			echo "it is not prime"
			return
		fi
	done
	
	echo "$num is a prime number" >> "$outfile"
}



if [ "$#" -lt 1 ]; then
	echo "No args passed"
	exit 1
fi

file=$1
outPrime="outPrime.txt"

if [ -e "$outPrime" ]; then
	> "$outPrime"
else
	touch "$outPrime"
fi

if [[ ! -f "$file" && ! -e "$file" ]]; then
	echo "No args passed"
	exit 1
fi

st=0

while IFS= read -r line; do
	for num in "$line"; do
		st=$(evenOdd "$num" )
		echo "$st"
	done
done < "$file"
