
echo "Enter internal  marks: "
read marks

echo "Enter attendance percentage: "
read perc

if [ $marks -ge 20 ] & [ $perc -ge 75 ]
then
    echo "you are ALLOWED!"
else
	echo "you are NOT ALLOWED!"
fi
