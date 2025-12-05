even=0
odd=0

echo "Enter 10 numbers :"
for((i=1;i<=10;i++))
do
  read num
  if [[ $((num%2)) -eq 0 ]]
  then
      even=$((even+1))
  else
      odd=$((odd+1))
  fi
done

echo "Total even numbers : $even"
echo "Total odd number : $odd"
