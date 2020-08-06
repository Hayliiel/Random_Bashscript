#! /bin/bash

clear

file="text.txt"
if [ ! -e $file ]; then
touch ./text.txt
fi

> $file
echo "Writing some stuff to test it out" >> $file
echo "There's numbers as well" >> $file
echo "123456789" >> $file
echo "And some other random stuff" >> $file

echo "Add your own stuff to the file (Esc -> Enter to end it)"
loop=0 
while ((loop == 0)); do
echo -n "- "
read something
if [[ $something == $'\e' ]]; then
break
else
echo $something >> $file
fi
done

echo "File stuff ###"
while read -r line; do
echo $line
done < $file


