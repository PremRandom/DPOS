


echo "Enter File1"
read file1
echo "Enter File2"
read file2


if cmp -s "$file1" "$file2"; then
    echo "Files $file1 and $file2 have same content."
    rm "$file2"
    echo "So $file2 is deleted."
else
    echo "Files $file1 and $file2 have different content."
fi
