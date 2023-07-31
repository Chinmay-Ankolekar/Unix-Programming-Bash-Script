#!/bin/sh

echo "Enter the User login account name "
read l

cd $HOME 
ls > list1.txt

cut -d ' ' -f 1 list1.txt > loginname

grep $l loginname

if [ $? -eq 0 ]
then
        echo "User Exists"
else 
        echo "User Not Exists"
fi

# Output:-
# Enter the name to be searched
# abc
# Not exists
