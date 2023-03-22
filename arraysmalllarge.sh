for i in {1..10};
do
  numbers[$i]=$((RANDOM % 900 + 100))
done

echo "Random Numbers:${numbers[@]}"


# Sort the array in ascending order
sorted_array=($(echo "${numbers[@]}" | tr ' ' '\n' | sort -n))
echo "sorted array: ${sorted_array[@]}"

# Find the 2nd smallest element
second_smallest=${sorted_array[1]}
echo "The 2nd smallest element is: $second_smallest"

# Find the 2nd largest element
n=${#sorted_array[@]}
second_largest=${sorted_array[$n-2]}
echo "The 2nd largest element is: $second_largest"
