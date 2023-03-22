echo "Enter a number:"
read n

index=0
for ((i=2; i<=$n; i++))
do
  while (( $n % $i == 0 ))
  do
    factors_arr[$index]=$i
    index=$((index+1))
    n=$((n/i))
  done
done

echo "Prime factors of are:"
for ((i=0;i<$index;i++))
do
  echo ${factors_arr[$i]}
done
