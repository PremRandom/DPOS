echo "Enter 1st num"
read n1
echo "Enter 2nd num"
read n2

sum= $(echo "scale=2; $n1+$n2" | bc)
echo "sum= $sum"
