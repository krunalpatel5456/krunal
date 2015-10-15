#!/bin/bash
# this script is to play with arrays

#variables
colours=("red" "green" "blue")
declare -A animals
animals=(["red"]="cardinal" ["green"]="frog" ["blue"]="lobster" ["yellow"]="duckiraffe")

# Main
#display the colours array , no matter how much stuff it has in it 
#for colour in "${colours[@]}"; do
#echo "The colours arrays contains the value $colour"
#done 

#index=0
#for((index=0;$index< ${#colours}; index++)); do 
#    echo "The colours array has the value ${colours[$index]} at position $index"
#done

# num=0 no longer hard-coded, ask the user for the number to user
# the end of the array is the number of elements in the array - 1
endofarray=$(( ${#colours} -1 ))
# the number of colours in the array is needed in the script
numberofcolours=${#colours}
read -p "Pick a number [1 - $numberofcolours]: " num
num=$(( $num - 1 ))

# see if the number supplied by the user is valid for the colour array
# valid means between 0 and the end of the array 

if [ $num -lt 0 ]; then
    echo " The smallest number you can pick is 1." >&2
    exit 2
elif [ $num -gt $endofarray ]; then
    $numberofcolours=${#colours}
    echo "The maximum number you can pick is $numberofcolours" >&2
    exit 2
fi

# display the colour and corresponding animal
colour=${colours[$num]}
echo "========="
echo "Index $num of the colours table produces a $colour ${animals[$colour]}"
echo "========="

#echo "The colours arrays contains ${colours[0]}, ${colours[1]}, ${colours[2]}"
#echo "The array colours has the following content: ${colours[@]}"

#echo "The animals arrays contains ${animals[red]}, ${animals[blue]}, ${animals[green]}"
#echo "The array animals has the following content: ${animals[@]}"

