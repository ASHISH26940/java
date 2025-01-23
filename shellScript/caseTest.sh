echo "Enter a number"
read number


case $(( number % 2 )) in
	0)
		echo "The number is even"
		;;
	1)
		echo "Odd"
		;;
	2)
		echo "Invalid"
		;;
esac
