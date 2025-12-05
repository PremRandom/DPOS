
echo "Enter a character:"
read input

if [[ $input =~ [a-z] ]]; 
then
    echo "lower case "


elif [[ $input =~ [A-Z] ]]; 
then
    echo "upper case "
    
elif [[ $input =~ [0-9] ]]; 
then
    echo "digit."
    
else
    echo "special symbol."
fi

