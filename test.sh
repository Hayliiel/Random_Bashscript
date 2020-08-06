#! /bin/bash

clear

file="text.txt"
if [ ! -e $file ]; then
touch ./text.txt
fi

> $file
echo "Writing some stuff to test it out" >> $file
echo "There's numbers as well" >> $file
echo "And some other random stuff" >> $file

echo "File stuff ###"
while read -r line; do
echo $line
done < $file
