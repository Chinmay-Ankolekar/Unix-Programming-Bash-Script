#! /bin/sh

echo Enter the name to be searched
read l
cd $HOME
ls > list1.txt
cut -d " " -f 1 list1.txt > loginname
grep $l loginname
if [ $? -eq 0 ]
then
echo User exists
else
echo Not exists
fi
