

echo "Enter Cost Price: "
read cp

echo "Enter Selling Price: "
read sp


if (( $(echo "$sp > $cp" | bc -l) )); then
    profit=$(echo "$sp - $cp" | bc)
    echo "PROFIT of $profit"

elif (( $(echo "$sp < $cp" | bc -l) )); then
    loss=$(echo "$cp - $sp" | bc)
    echo "LOSS of $loss"

else
    echo "No profit loss."
fi

