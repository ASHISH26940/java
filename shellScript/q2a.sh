#!/bin/bash

# Read the input values for x and n
read -p "Enter the value of x: " x
read -p "Enter the value of n: " n

# Calculate the initial term (x/2)
term=$(echo "scale=5; $x/2" | bc -l)
echo "$term"

# Initialize the sum to 0
sum=0

# Loop through n terms
for ((i=1; i<=n; i++)); do
    # Calculate the square of the term (term^2)
    term_square=$(echo "scale=5; $term^2" | bc -l)

    # If i is even, add the square to the sum
    if ((i % 2 == 0)); then
        sum=$(echo "scale=5; $sum + $term_square" | bc -l)
    else
        sum=$(echo "scale=5; $sum - $term_square" | bc -l)
    fi
done

# Add the last term to the sum
echo "Adding the last term"
finalVal=$(echo "scale=5; $sum + 1" | bc -l)

# Output the final value
echo "Value is: $finalVal"

