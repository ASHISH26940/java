if [ "$#" -lt 1 ];then
	echo "invalid number of args"
	exit 1
fi

lines=0
words=0
charac=0

file check in "$@"; do
	if [ -d "$check" ]; then
		echo "Not a directory"
	elif [ -f "$check" ]; then
		lines=$( wc -l < "$check" )
		words=$( wc -w < "$check" )
		charac=$( wc -c < "$check" )
		if [ -g "$check" ]; then
			perm=$( ls -l "$check" | awk "{print $1}" | cut -c6 )
			if [ "$perm" = "w" ];then
				echo "Group has read permission no write permission. Removing it..."
				chmod g-w "$check"
			else
				echo "Group has read permission no write permission. Adding it...."
				chmod g+w "$check"
			fi
		else
			echo "File do not have any permission"
		fi
	else
		echo "Neither a file nor a directory"
	fi
done
