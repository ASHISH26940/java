fact(){
	local n=$1
	local fact=1
	for((i=1;i<=n;i++));do
		fact=$((fact*i))
	done
echo $fact
}

read -p "Enter the value of x:" x
read -p "Enter the number of series: " terms

sum=0
power=1

for((n=1;n<=terms;n++)); do
	if((n%2==0)); then
		power=$((power + 2))
		fact=$(fact $power)
		term=$(echo "scale=5; $x^$power/$fact"| bc -l)
		sum=$(echo "scale=5; $sum+$term"| bc -l)
	fi
done

sum=$(echo "scale=5; $sum + $x"|bc -l)

echo " The ouput is : $sum "

