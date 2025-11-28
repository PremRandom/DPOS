
echo -n "Enter basic salary: "
read basic


da=$(echo "$basic * 0.40" | bc)
hra=$(echo "$basic * 0.30" | bc)

gross=$(echo "$basic + $da + $hra" | bc)

echo "Dearness Allowance (40%): $da"
echo "House Rent Allowance (30%): $hra"
echo "Gross Salary: $gross"

