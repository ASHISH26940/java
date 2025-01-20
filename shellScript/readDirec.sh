if [ "$#" -lt 1 ]; then
    exit 1
fi

direc=$1

if [ ! -d "$direc" ]; then
    exit 1
fi

out="out.txt"

flc=0
echo "list of all direc: $direc" > "$out"

for files in "$direc"/*; do 
    if [ -f "$files" ]; then
        flc=$((flc+1))
        echo "$files" >> "$out"
    fi
done

echo "Total file count: $flc" >> "out"

cat "$out"
