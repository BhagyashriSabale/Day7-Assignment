for i in {1..10}; do
  numbers[$i]=$(( RANDOM % 900 + 100 ))
done


echo "Random numbers: ${numbers[@]}"


largest=${numbers[1]}
second_largest=${numbers[1]}
for i in "${numbers[@]}"; do
  if (( i > largest )); then
    second_largest=$largest
    largest=$i
  elif (( i > second_largest && i != largest )); then
    second_largest=$i
  fi
done
echo "2nd largest element: $second_largest"


smallest=${numbers[1]}
second_smallest=${numbers[1]}
for i in "${numbers[@]}"; do
  if (( i < smallest )); then
    second_smallest=$smallest
    smallest=$i
  elif (( i < second_smallest && i != smallest )); then
    second_smallest=$i
  fi
done
echo "2nd smallest element: $second_smallest"
