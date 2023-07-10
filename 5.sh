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

# Output:-
# Enter the filename
# pattern.txt
# Enter the pattern to be searched
# light
# The sun is a powerful celestial body that illuminates our planet and provides us with warmth and light.
# Sunlight is essential for the growth of plants through the process of photosynthesis.
# Command executed successfully

