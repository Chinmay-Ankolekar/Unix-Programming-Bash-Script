#!/bin/sh

echo Enter the filename
read f
echo Enter the pattern to be searched
read pat
if [ ! -f $f ]
then
echo File does not exist
exit
fi
grep "$pat" $f
if [ $? -eq 0 ]
then
echo Command executed successfully
else
echo Command failed
fi
