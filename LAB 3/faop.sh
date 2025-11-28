
echo "Enter 1st integer:"
read n1
echo "Enter 2nd integer:"
read n2

sum=$(echo "scale=2; $n1+$n2" | bc)
echo "sum= $sum"

sub=$(echo "scale=2; $n1-$n2" | bc)
echo "sub= $sub"

mul=$(echo "scale=2; $n1*$n2" | bc)
echo "mul= $mul"

div=$(echo "scale=2; $n1/$n2" | bc)
echo "div= $div"

rem=$(echo "scale=2; $n1%$n2" | bc)
echo "rem= $rem"

