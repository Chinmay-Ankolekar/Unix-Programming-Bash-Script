#! /bin/sh

echo "enter the directory path"
read path
echo "enter to pattern to be searched"
read pat
cd $path
ls > just.txt
for word in `cat just.txt`
do
grep "$pat" $word
done

