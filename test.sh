#! /bin/bash
file="test.txt"
if [ ! -e $file ]; then
touch ./test.txt
fi

> $file

echo "Writing some stuff to test it out;" >> $file
echo "There's numbers as well;" >> $file
echo "And some other random stuff;" >> $file

: '
echo "Printing something with newline"
echo -n "Printing something without newline"
echo -e "\nRemoving \t backslash \t stuff\n"

echo "Adding some stuff"
((sum = 1 + 12))
((area = 5 * 5))

echo $sum
echo $area

echo -n "Adding your stuff: "
read something
if [[ $something -lt 10 ]]; then
echo "$something is less than 10"
elif [[ $something -gt 10 ]]; then
echo "$something is greater than 10"
elif [[ $something -eq 10 ]]; then
echo "Great you found the right number!"
fi
echo "$something Added"

echo "Adding an user"
echo -n "Username: "
read username
echo -n "Pass: "
read password

if [[ ( $username == "123" && $password == "123" ) ]]; then
echo "Valid user"
else
echo "Nope"
fi
 
echo "Checking if there's arguments"
if [[ $# -ne 0 ]]; then
echo "Found $# arguments"
count=0
while (( "$#" )); do
echo "The argument number $((count + 1)) is $1"
((count++))
shift
done
else
echo "No arguments at all"
fi

'
