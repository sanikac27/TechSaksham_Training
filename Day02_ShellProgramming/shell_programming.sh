#!/bin/bash
# Shell programming examples

# If statement example
echo "Enter a number:"
read num
if [ $num -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is 10 or less"
fi

# For loop example
echo "Counting from 1 to 5:"
for i in {1..5}; do
    echo "Iteration: $i"
done

# While loop example
counter=1
echo "While loop counting up to 5:"
while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done

# SSH example
echo "Connecting to remote server via SSH"
echo "ssh user@remote_host"
